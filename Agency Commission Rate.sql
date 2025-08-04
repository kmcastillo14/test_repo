WITH LatestEffective AS (
    SELECT 
        Branch,
        Agency,
        MAX(EffectiveDate) AS MaxEffDate
    FROM [RE].[CommissionRateHDR]
    GROUP BY Branch, Agency
)
SELECT 
    hdr.Branch,
    hdr.Agency,
    ag.Description,
	Age.AgencyType,
    hdr.SellerType,
    hdr.CommissionRate,
	hdr.OverridingSellerType,
    hdr.OverridingRate,
    hdr.Recuser,
    hdr.Recdate,
    hdr.EffectiveDate
FROM [RE].[CommissionRateHDR] hdr
INNER JOIN LatestEffective le
    ON hdr.Branch = le.Branch
    AND hdr.Agency = le.Agency
    AND hdr.EffectiveDate = le.MaxEffDate
LEFT JOIN [RE].[AgencyGroup] ag
    ON hdr.Agency = ag.Code
LEFT JOIN [RE].[Agency] Age
	ON hdr.Agency = Age.Code

--WHERE hdr.Branch = '003'
Where HDR.Agency = '004-077'

order by hdr.Agency, hdr.SellerType ASC;

/*
Select * From [RE].[CommissionRateHDR]
Where agency = '032-007'
Order by EffectiveDate Desc;
*/


--Select * from [RE].[CommissionOverridingSeller];

/*
WITH RankedRates AS (
    SELECT 
        Branch,
		Agency,
        SellerType,
		CommissionRate,
        OverridingRate,
		OverridingSellerType,
        Recuser,
        Recdate,
        EffectiveDate,
        ROW_NUMBER() OVER (PARTITION BY EffectiveDate ORDER BY EffectiveDate DESC) AS rn
    FROM [RE].[CommissionRateHDR]
	Where Agency = '008-061'
)
SELECT 
		Branch,
		Agency,
        SellerType,
		CommissionRate,
        OverridingRate,
		OverridingSellerType,
        Recuser,
        Recdate,
        EffectiveDate
FROM RankedRates
WHERE rn = 1;


WITH LatestEffective AS (
    SELECT MAX(EffectiveDate) AS MaxEffDate
    FROM [RE].[CommissionRateHDR]
	--Where [RE].[CommissionRateHDR].Branch = '003')
    WHERE Agency Like '003-001'
)
SELECT 
    [RE].[CommissionRateHDR].Branch,
    [RE].[CommissionRateHDR].Agency,
	[RE].[AgencyGroup].Description,
    [RE].[CommissionRateHDR].SellerType,
    [RE].[CommissionRateHDR].CommissionRate,
    [RE].[CommissionRateHDR].OverridingRate,
    [RE].[CommissionRateHDR].OverridingSellerType,
    [RE].[CommissionRateHDR].Recuser,
    [RE].[CommissionRateHDR].Recdate,
    [RE].[CommissionRateHDR].EffectiveDate
FROM [RE].[CommissionRateHDR]
LEFT JOIN [RE].[AgencyGroup]
	ON [RE].[CommissionRateHDR].Agency = [RE].[AgencyGroup].Code

--Where Branch = '003'
WHERE Agency Like '003-001'
AND EffectiveDate = (SELECT MaxEffDate FROM LatestEffective);

  --Agency = '044-009'
*/

