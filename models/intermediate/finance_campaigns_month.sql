SELECT
    {{ yearmonth("year", "month") }}
    ,SUM(ads_margin)
    ,SUM(average_basket)
    ,SUM(operational_margin)
    ,SUM(ads_cost)
FROM {{ref("finance_campaigns_day")}}
GROUP BY year,month