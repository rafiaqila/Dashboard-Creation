-- EXPLORATORY DATA ANALYSIS + CREATING VIEWS TO BE USED IN TABLEAU FOR VISUALIZATION
select * from coviddeaths where continent <> ''; -- if the continent is null then the location will be the continent name
select * from covidvaccinations where continent <> '' ;

-- 1. Global Fatality Rate Percentage
create view fatality_rate as
select continent,location, str_to_date(date, '%d/%m/%y') as date, sum(new_cases) as total_cases, sum(new_deaths) as total_deaths, round(100 * (sum(new_deaths)/sum(new_cases)),2) as fatality_percentage
from coviddeaths
where continent <> ''
group by 1,2,3;

-- 2. Population Infected Percentage
create view global_infected_rate as
select continent, location, str_to_date(date, '%d/%m/%y') as date, population, total_cases, round(100 * (total_cases/population),2) as infected_population
from coviddeaths
where continent <> ''
order by 1,3;

-- 3. Country with the Highest Infection Rate
create view infection_rate as 
select location, max(total_cases) as highest_cases, population, round(100 * (max(total_cases)/population),2) as infected_population
from coviddeaths
where continent <> ''
group by location, population
order by 4 desc;

-- 4. Country with the Highest Fatality Rate After Total Cases Hit 1000
with cte as (
	select location, total_cases, total_deaths, round(100 * (total_deaths/total_cases),3) as fatality_percentage, rank()over(partition by location order by (total_deaths/total_cases) desc) as rn, date
	from coviddeaths
    where total_cases >= 1000 and continent <> ''
)
select location, total_cases, total_deaths, fatality_percentage, date
from cte
where rn = 1
order by 4 desc;

-- 5. Continent with the Highest Death Count
create view continent_death as 
select str_to_date(date, '%d/%m/%y') as date, location, max(total_deaths) as highest_death_count
from coviddeaths
where continent = '' and location not in ('World', 'European Union', 'International')
group by 1,2
order by 3 desc;

-- 6. Daily Global Fatality Rate
select str_to_date(date, '%d/%m/%y') as date, sum(new_cases) as total_cases, sum(new_deaths) as total_deaths, round(100 * sum(new_deaths)/sum(new_cases),2) as fatality_percentage
from coviddeaths
where continent <> ''
group by 1
order by 1 asc;

-- 7. Daily Hospitalized Rate, ICU'd rate, and Bed Occupancy Rate
create view hospitalized as
select
	continent,location, str_to_date(date, '%d/%m/%y') as date, total_cases, hosp_patients, round(100*hosp_patients/total_cases, 2) as hospitalized_rate, icu_patients, round(100*icu_patients/total_cases, 2) as icu_rate,
    (hospital_beds_per_thousand * population / 1000) as total_beds_available, round(100 * hosp_patients/ (hospital_beds_per_thousand * population / 1000), 2) as bed_occupancy_rate
from coviddeaths
where continent <> '' and hosp_patients <> ''
order by 1, 2;

-- 8. People Vaccinated Daily
create view vaccinated as
with peoplevaccinated as (
	select d.continent, d.location, str_to_date(d.date, '%d/%m/%y') as date, d.population, v.new_vaccinations, sum(v.new_vaccinations) over (partition by d.location order by str_to_date(d.date, '%d/%m/%y')) as rolling_vaccinated
	from coviddeaths d
	join covidvaccinations v
		on d.location = v.location and d.date = v.date
	where d.continent <> ''
	order by 1,2
)
select *, round(100 * rolling_vaccinated/population, 2) as vaccinated_percentage
from peoplevaccinated;