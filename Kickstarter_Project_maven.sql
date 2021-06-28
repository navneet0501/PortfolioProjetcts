--1 Which category has the highest success percentage? How many projects have been successful?

Select Category, COUNT(*) as Num_of_successful_projects
From PortfolioProject..kickstarter_projects
Where state = 'Successful'
Group by Category
Order by Num_of_successful_projects desc


--2 What project with a goal over $1,000 USD, had the biggest Goal Completion % (Pledged / Goal)? How much money was pledged?

Select Name,Category,Subcategory,Goal,Pledged, (Pledged/Goal)*100 as Goal_Completion_percentage
From PortfolioProject..kickstarter_projects
Where Goal > 1000
Order By Goal_Completion_percentage desc

--3 Total Projects
Select COUNT(*) as Num_of_Projects
From PortfolioProject..kickstarter_projects
Where state = 'Successful'


--4 Successful Projects
Select COUNT(*) as Num_of_Projects
From PortfolioProject..kickstarter_projects
Where State = 'Successful'

--5
Select category, COUNT(State)/COUNT(, COUNT( state)
From PortfolioProject..kickstarter_projects
Where State = 'Successful'
Group By Category



--

Select *
From PortfolioProject..kickstarter_projects














Select Category, Year(Deadline), (Pledged/Goal)*100 as Goal_Completion_percentage
From PortfolioProject..kickstarter_projects
Where Pledged > 0
and goal > 0
Group by Category, De
 

