
Select *
From PortfolioProject..CovidDeaths
Where continent is not null
order by 3,4

--Select *
--From PortfolioProject..CovidVaccination
--order by 3,4

Select location,date,total_cases,new_cases,total_deaths,population
From PortfolioProject..CovidDeaths
order by 1,2


--Looking at the Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid19 in your country
Select location,date,total_cases,total_deaths,Round((total_deaths/total_cases)*100 ,2) as DeathPercentage
From PortfolioProject..CovidDeaths
Where location = 'India' and continent is not null
order by 1,2


-- looking at the Total Cases vs The Population
-- Shows what percentage of population got Covid
Select location,date,total_cases,population, (total_cases/population)*100  as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Where location = 'India' and continent is not null
order by 1,2


-- looking at countries with highest infection rate compared to the population
Select location,population,MAX(total_cases) as highest_infection_count, Max((total_cases/population))*100  as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Where continent is not null
--Where location = 'India'
Group By location,population
order by PercentPopulationInfected desc



--Showing the countries with the highest death count per Population and their Percentage of population died
Select location,population,MAX(CAST(total_deaths as int)) as TotalDeathCount, Max((total_deaths/population))*100  as PercentPopulationDied
From PortfolioProject..CovidDeaths
Where continent is not null
--Where location = 'India'
Group By location,population
order by TotalDeathCount desc

-- LET'S BREAK THINGS DOWN BY CONTINENT
--Showing the continents wit the highest death count

Select continent,MAX(CAST(total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
Where continent is not null
--Where location = 'India'
Group By continent
order by TotalDeathCount desc



--GLOBAL NUMBERS

Select date,SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location = 'India' and 
Where continent is not null
Group by date
order by 1,2


--Total number of cases and death in the world along with the death percentage


Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
From PortfolioProject..CovidDeaths
--Where location = 'India' and 
Where continent is not null
--Group by date
order by 1


--Vaccinations

--Total Vaccinations in the world
Select location, Sum(CAST(new_vaccinations as float)) as Total_vaccinations
From PortfolioProject..OnyxDataCovidVaccination
Where continent is null
and location = 'world'
Group by location

-- Total vaccinations by Country
Select location,max(cast(total_vaccinations as float)) as total_vaccinated
From PortfolioProject..OnyxDataCovidVaccination
where continent is not null
group by location
order by total_vaccinated desc


--Fully Vaccinated by Country
Select location,max(cast(people_fully_vaccinated as float)) as Fully_vaccinated
From PortfolioProject..OnyxDataCovidVaccination
where continent is not null
group by location
order by Fully_vaccinated desc


--Total Vaccination by continent
Select continent, Sum(CAST(new_vaccinations as float)) as Total_vaccinations
From PortfolioProject..OnyxDataCovidVaccination
Where continent is not null
Group by continent
order by continent



--Looking at Total Population vs Vaccinations

Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
	SUM(Cast(vac.new_vaccinations as int)) OVER (PARTITION BY dea.location ORDER by dea.location, dea.date) as RollingPeopleVaccinated
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccination vac
	on dea.location = vac.location
	and dea.date = vac.date
Where dea.continent is not null
order by 2,3

with PopvsVac ( continent, location, date, population, New_vaccinations, RollingPeopleVaccinated)
as
(
Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
	SUM(Cast(vac.new_vaccinations as int)) OVER (PARTITION BY dea.location ORDER by dea.location, dea.date) as RollingPeopleVaccinated
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccination vac
	on dea.location = vac.location
	and dea.date = vac.date
Where dea.continent is not null
--order by 2,3
)
Select *,(RollingPeopleVaccinated/population)*100
From PopvsVac


--Creating View to store data for later Visualization

Create View PopvsVac as 
Select dea.continent,dea.location,dea.date,dea.population, vac.new_vaccinations, 
	SUM(Cast(vac.new_vaccinations as int)) OVER (PARTITION BY dea.location ORDER by dea.location, dea.date) as RollingPeopleVaccinated
from PortfolioProject..CovidDeaths dea
join PortfolioProject..CovidVaccination vac
	on dea.location = vac.location
	and dea.date = vac.date
Where dea.continent is not null
--order by 2,3


Select *
From PopvsVac