SELECT
    FORMAT_DATE('%Y-%m', date_date) AS year_month
    ,SUM(ads_margin) AS ads_margin
    ,ROUND(SUM(average_basket),2) AS average_basket
    ,SUM(operational_margin) AS operational_margin
    ,SUM(ads_cost) AS ds_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY year_month