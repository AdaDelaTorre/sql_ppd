select *
from Human_life_Expectancy

--Countries w/Longest Life Expectancy as of Year 2019
select Country, Yr2019
from Human_life_Expectancy
group by Country, Yr1990
order by Yr2019 desc

--Countries that increase Life Expectancy in the last 5yrs (2014-2019)
select Country, Yr2014, Yr2015, Yr2016, Yr2017, Yr2018, Yr2019
from Human_life_Expectancy
where Yr2019 > Yr2014
group by Country, Yr2014, Yr2015, Yr2016, Yr2017, Yr2018, Yr2019
order by Yr2019 desc


--Percentage of increase in life expectancy of these countries
select Country, Yr2014, Yr2015, Yr2016, Yr2017, Yr2018, Yr2019,round(Yr2019/Yr2014,3)*100 as IncreasePercentage
from Human_life_Expectancy
where Yr2019 > Yr2014
group by Country, Yr2014, Yr2015, Yr2016, Yr2017, Yr2018, Yr2019
order by Yr2019 desc



--Countries that exceed 75yrs of age in 2019
select Country, Yr2019
from Human_life_Expectancy
where Yr2019 > 75
group by Country, Yr2019
order by Yr2019 desc

--How many Countries exceed 75yrs as of 2019
select Count(Country) as CountriesLiveBeyond75
from Human_life_Expectancy
where Yr2019 > 75

--Average Life Expectancy per year
select AVG(Yr1990) as Avg1990, AVG(Yr2000) as Avg2000, AVG(Yr2010) as Avg2010, AVG(Yr2019) as Avg2019
from Human_life_Expectancy

select case when  Yr2019 > Yr2014 then 'increase' when  Yr2019 < Yr2014 then 'decrease' else 'retain' end increase_tag, count(distinct country) cnt
from Human_life_Expectancy
group by case when  Yr2019 > Yr2014 then 'increase' when  Yr2019 < Yr2014 then 'decrease' else 'retain' end

--where Yr2019 > Yr2014
