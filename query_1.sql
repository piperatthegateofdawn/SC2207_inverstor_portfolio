SELECT i.InvestorID, i.Name
FROM Investors i
JOIN Portfolios p ON i.InvestorID = p.InvestorID
WHERE YEAR(p.StartDate) <= 2024
  AND (p.EndDate IS NULL OR YEAR(p.EndDate) >= 2024)  
GROUP BY i.InvestorID, i.Name
HAVING AVG(p.MarketValue - p.InvestedAmount) < 0;
