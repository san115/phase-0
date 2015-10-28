<!-- SQL Queries:

1. Select all data for all states: -->
select * from states;

<!-- 2. Select all date for all regions: -->
select * from regions;

<!-- 3. Select the state_name and population for all states: -->
select state_name, population
from states;

<!-- 4. Select the state_name and population for all states ordered by population. State with highest should be at the top. -->
select state_name, population
from states
order by population DESC;

<!-- 5. Select the state_name for the states in region 7. -->
select state_name
from states
where region_id=7;

<!-- 6. Select the state_name and population_density for states with a population
density over 50 ordered from least to most dense. -->
select state_name, population_density
from states
where population_density>50
order by population_density;

<!-- 7. Select the state_name for states with a population between 1 million and 1.5 million people -->
select state_name
from states
where population<1000000
and population>1500000;

<!-- 8. Select the state_name and region_id for states ordered by region in ascending order -->
select state_name, region_id
from states
order by region_id;

<!-- 9. Select the region_name for the regions with "Central" in the name. -->
select region_name
from regions
where region_name like '%Central%';

<!-- 10. Select the region_name and the state_name for all states and regions in ascending order by region_id -->
select regions.region_name, states.state_name
from regions
inner join states
on regions.id=states.region_id;

<!-- Screenshot to Schema: -->
[Schema Screenshot!](Screen_Shot.png)

<!-- Reflect:
What are databases for? Databases contain information organized in the form of tables
What is a one-to-many relationship? It refers to the a type of information in one table, the primary key, or the unique identifiers , that connects to information in another/other table(s) by way of using a foreigh key.
What is a primary key? What is a foreign key? How can you determine which is which? The primary key is the unique identifier, such as id numbers. It has to be unique as it is used to identify the element in the table. Foreign keys connect information in one table to another table, so foreign keys are overlapping types of information that appear in more than one table.
How can you select information out of a SQL database? What are some general guidelines for that?  To select, use the select method and specify the type(s) of information,  the name(s) of the column(s), and specify the table name. For futher specification, the order by method allows for sorting of specific column data, either ascending or descending; the where method can be used to further specify the conditions of the column data, such as values less or greater than or equal to. The where/and method can add an additional layer of conditions for specification. To call information from more than one table, the join methods can be used to call on specific column data. -->
