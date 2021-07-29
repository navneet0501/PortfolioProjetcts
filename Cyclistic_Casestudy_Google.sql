Select *
From Google_CaseStudies..June_2020

--Changing the datatypes of tables to match the datatype of every table

Alter Table	June_2020 alter Column start_station_id nvarchar(255) 
Alter Table	June_2020 alter Column end_station_id nvarchar(255)
Alter Table	June_2020 alter Column ride_length time(0)

Alter Table	July_2020 alter Column start_station_id nvarchar(255) 
Alter Table	July_2020 alter Column end_station_id nvarchar(255)
Alter Table	July_2020 alter Column ride_length time(0)

Alter Table	August_2020 alter Column start_station_id nvarchar(255) 
Alter Table	August_2020 alter Column end_station_id nvarchar(255)
Alter Table	August_2020 alter Column ride_length time(0)

Alter Table	September_2020 alter Column start_station_id nvarchar(255) 
Alter Table	September_2020 alter Column end_station_id nvarchar(255)
Alter Table	September_2020 alter Column ride_length time(0)

Alter Table	October_2020 alter Column start_station_id nvarchar(255) 
Alter Table	October_2020 alter Column end_station_id nvarchar(255)
Alter Table	October_2020 alter Column ride_length time(0)

Alter Table	November_2020 alter Column start_station_id nvarchar(255) 
Alter Table	November_2020 alter Column end_station_id nvarchar(255)
Alter Table	November_2020 alter Column ride_length time(0)

Alter Table	December_2020 alter Column start_station_id nvarchar(255) 
Alter Table	December_2020 alter Column ride_length time(0)

Alter Table	January_2021 alter Column start_station_id nvarchar(255) 
Alter Table	January_2021 alter Column ride_length time(0)

Alter Table	February_2021 alter Column start_station_id nvarchar(255) 
Alter Table	February_2021 alter Column ride_length time(0)

Alter Table	March_2021 alter Column start_station_id nvarchar(255) 
Alter Table	March_2021 alter Column ride_length time(0)

Alter Table	April_2021 alter Column end_station_id nvarchar(255)
Alter Table	April_2021 alter Column ride_length time(0)

Alter Table	May_2021 alter Column ride_length time(0)

--Creating a new table by consolidating results from all the tables

INSERT INTO  Total_results
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..June_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..July_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..August_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..September_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..October_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..November_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..December_2020
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..January_2021
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..February_2021
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..March_2021 
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..April_2021
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
From Google_CaseStudies..May_2021
Order by started_at

Alter table Total_Results Alter column ride_length time(0)

--Querying the new table
Select *
From Google_CaseStudies..Total_Results
Order by started_at

--Number of rides by each type of bike 
Select rideable_type, COUNT(rideable_type) as number_of_rides, member_casual
From Google_CaseStudies..Total_Results
Group by rideable_type, member_casual

--Number of Rides by customer type
Select member_casual, COUNT(member_casual) as number_of_rides
From Google_CaseStudies..Total_Results
group by member_casual

--Avg ride length by customer type
Select member_casual, CAST(DATEADD( ms,AVG(CAST(DATEDIFF( ms, '00:00:00', ISNULL(ride_length, '00:00:00')) as bigint)), '00:00:00' )  as TIME(0)) as 'avg_time'
From Google_CaseStudies..Total_Results
Group by member_casual

--average ride_length for users by day_of_week
Select Datename(dw,day_of_week) as Day, CAST(DATEADD( ms,AVG(CAST(DATEDIFF( ms, '00:00:00', ISNULL(ride_length, '00:00:00')) as bigint)), '00:00:00' )  as TIME(0)) as 'avg_time'
From Google_CaseStudies..Total_Results
Group by day_of_week
order by avg_time desc

--mean of ride length
Select Cast(CAST(DATEADD( ms,AVG(CAST(DATEDIFF( ms, '00:00:00', ISNULL(ride_length, '00:00:00')) as bigint)), '00:00:00' )  as TIME(0)) as nvarchar(50)) as 'avg_time'
From Google_CaseStudies..Total_Results

--mode of day_of_week
SELECT Datename(dw,day_of_week) as Dayday_of_week, COUNT(*)
FROM  Google_CaseStudies..Total_Results
GROUP  BY day_of_week
ORDER  BY COUNT(*) DESC

--Number of rides of members by Month
Select Distinct DATENAME(mm,started_at) as month, COUNT(started_at) as number_of_rides_members
From Google_CaseStudies..Total_Results
Where member_casual = 'member'
Group by DATENAME(mm,started_at)
order by number_of_rides_members

--Number of rides of Casuals by Month
Select Distinct DATENAME(mm,started_at) as Month, COUNT(started_at) as number_of_rides_casuals
From Google_CaseStudies..Total_Results
Where member_casual = 'casual'
Group by DATENAME(mm,started_at)
order by number_of_rides_casuals

--Total number of rides by month
Select Distinct DATENAME(mm,started_at) as Month, COUNT(started_at) as number_of_rides, member_casual
From Google_CaseStudies..Total_Results
Group by DATENAME(mm,started_at), member_casual
order by number_of_rides


-- Number pf rides by months and seasons
Select Distinct DATENAME(mm,started_at) as Month, COUNT(started_at) as number_of_rides, member_casual,(Case
	When DATENAME(mm,started_at) like 'January' or
	DATENAME(mm,started_at) like 'February' or 
	DATENAME(mm,started_at) like 'December' then 'Winter'
	When DATENAME(mm,started_at) like 'March' or
	DATENAME(mm,started_at) like 'April' or 
	DATENAME(mm,started_at) like 'May' then 'Spring'
	When DATENAME(mm,started_at) like 'June' or
	DATENAME(mm,started_at) like 'July' or 
	DATENAME(mm,started_at) like 'August' then 'Summer'
	When DATENAME(mm,started_at) like 'September' or
	DATENAME(mm,started_at) like 'October' or 
	DATENAME(mm,started_at) like 'November' then 'Autumn'
end) as season
From Google_CaseStudies..Total_Results
Group by DATENAME(mm,started_at), member_casual,(Case
	When DATENAME(mm,started_at) like 'January' or
	DATENAME(mm,started_at) like 'February' or 
	DATENAME(mm,started_at) like 'December' then 'Winter'
	When DATENAME(mm,started_at) like 'March' or
	DATENAME(mm,started_at) like 'April' or 
	DATENAME(mm,started_at) like 'May' then 'Spring'
	When DATENAME(mm,started_at) like 'June' or
	DATENAME(mm,started_at) like 'July' or 
	DATENAME(mm,started_at) like 'August' then 'Summer'
	When DATENAME(mm,started_at) like 'September' or
	DATENAME(mm,started_at) like 'October' or 
	DATENAME(mm,started_at) like 'November' then 'Autumn'
end)
order by number_of_rides


--Number of rides of members by Day
Select Distinct Datename(dw,day_of_week) as Day, COUNT(day_of_week) as number_of_rides_members
From Google_CaseStudies..Total_Results
Where member_casual = 'member'
Group by day_of_week
Order by day_of_week


--Number of rides of casuals by Day
Select Distinct Datename(dw,day_of_week) as Day, COUNT(day_of_week) as number_of_rides_casuals
From Google_CaseStudies..Total_Results
Where member_casual = 'casual'
Group by day_of_week
Order by day_of_week

--Total number of rides by day of week
Select Distinct Datename(dw,day_of_week) as day_of_week, COUNT(day_of_week) as number_of_rides, member_casual,(Case
	When Cast(started_at as time(0)) >= '06:00:00' and Cast(started_at as time(0)) < '12:00:00' Then 'Morning'
	When Cast(started_at as time(0)) >= '12:00:00' and Cast(started_at as time(0)) < '17:00:00' Then 'Afternoon'
	When Cast(started_at as time(0)) >= '17:00:00' and Cast(started_at as time(0)) < '20:00:00' Then 'Evening'
	Else 'Night'
End) as time_of_day
From Google_CaseStudies..Total_Results
Group by day_of_week, member_casual,(Case
	When Cast(started_at as time(0)) >= '06:00:00' and Cast(started_at as time(0)) < '12:00:00' Then 'Morning'
	When Cast(started_at as time(0)) >= '12:00:00' and Cast(started_at as time(0)) < '17:00:00' Then 'Afternoon'
	When Cast(started_at as time(0)) >= '17:00:00' and Cast(started_at as time(0)) < '20:00:00' Then 'Evening'
	Else 'Night'
End)
Order by day_of_week

--Number of rides by Weekday/ Weekend
Select Distinct Datename(dw,day_of_week) as day_of_week, COUNT(day_of_week) as number_of_rides,(Case
	When Datename(dw,day_of_week) = 'Saturday' or  Datename(dw,day_of_week) = 'Sunday' then 'Weekend'
	Else 'Weekday'
	end) as Weekday_Weekend
From Google_CaseStudies..Total_Results
Group by day_of_week, member_casual,(Case
	When Datename(dw,day_of_week) = 'Saturday' or  Datename(dw,day_of_week) = 'Sunday' then 'Weekend'
	Else 'Weekday'
	end)
Order by day_of_week

--Number of rides by casual riders by day of the week
Select Distinct Datename(dw,day_of_week) as day_of_week, COUNT(day_of_week) as number_of_rides
From Google_CaseStudies..Total_Results
Where member_casual = 'casual'
Group by day_of_week
Order by day_of_week


--Number of rides by month and time of the day(Morning, Afternoon, Evening, Night) and avg time
Select Distinct DATENAME(mm,started_at) as month,
(Case
	When Cast(started_at as time(0)) >= '06:00:00' and Cast(started_at as time(0)) < '12:00:00' Then 'Morning'
	When Cast(started_at as time(0)) >= '12:00:00' and Cast(started_at as time(0)) < '17:00:00' Then 'Afternoon'
	When Cast(started_at as time(0)) >= '17:00:00' and Cast(started_at as time(0)) < '20:00:00' Then 'Evening'
	Else 'Night'
End) as time_of_day, COUNT(started_at) as num_of_trips, Cast(CAST(DATEADD( ms,AVG(CAST(DATEDIFF( ms, '00:00:00', ISNULL(ride_length, '00:00:00')) as bigint)), '00:00:00' )  as TIME(0)) as varchar(50)) as 'avg_time', member_casual

From Google_CaseStudies..Total_Results
Group by (Case
	When Cast(started_at as time(0)) >= '06:00:00' and Cast(started_at as time(0)) < '12:00:00' Then 'Morning'
	When Cast(started_at as time(0)) >= '12:00:00' and Cast(started_at as time(0)) < '17:00:00' Then 'Afternoon'
	When Cast(started_at as time(0)) >= '17:00:00' and Cast(started_at as time(0)) < '20:00:00' Then 'Evening'
	Else 'Night'
End), DATENAME(mm,started_at), member_casual
Order by month,num_of_trips desc


--Number of rides: casual riders by station name

Select Distinct start_station_name as station_name, COUNT(start_station_name) as num_of_trips_started, COUNT(end_station_name) as num_of_trips_ended, member_casual
From Google_CaseStudies..Total_Results
Group by start_station_name, member_casual
order by num_of_trips_started desc, num_of_trips_ended desc


-- Number of rides: time of the day
Select DATEPART(HOUR, started_at) as Hour, COUNT(started_at) as num_of_trips, member_casual
From Google_CaseStudies..Total_Results
Group by DATEPART(HOUR, started_at), member_casual
Order by Hour



