select *
from dbo.['postNatal_data]

--Suicidal by Age Group
select age, count(SuicideAttempt) as Suicidal
from dbo.['postNatal_data]
where SuicideAttempt = 'Yes'
group by Age

--Emotional Numbers by Age Group
select age, count(FeelingSadOrTearful) as Sadness, count(FeelingAnxious) as Anxiety, count(FeelingOfGuilt) as Guilt
from dbo.['postNatal_data]
where FeelingSadOrTearful = 'Yes'and FeelingAnxious = 'Yes' and FeelingOfGuilt = 'Yes'
group by Age

--Physiological Numbers by Age Group
select age, count(ProblemsConcentratingOrMakingDecision) as ConcentrationOrDecisions, count(TroubleSleepingAtNight) as TroubleSleeping, count(OvereatingOrLossOfAppetite) as OverEatingOrAppetiteLoss
from dbo.['postNatal_data]
where ProblemsConcentratingOrMakingDecision = 'Yes'and TroubleSleepingAtNight = 'Yes'and OvereatingOrLossOfAppetite = 'Yes'
group by Age

--Effects on Baby & Partner by Age Group
select age, count(IrritableTowardsBabyOrpartner) as Irritable, count(ProblemsBondingWithBaby) as ProblemsBonding
from dbo.['postNatal_data]
where IrritableTowardsBabyOrpartner = 'Yes'and ProblemsBondingWithBaby = 'Yes'
group by Age

