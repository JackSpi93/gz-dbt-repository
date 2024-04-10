{% macro margin_percent(revenue, margin) %}
   ROUND(((s.revenue - ROUND(s.quantity*CAST(p.purchase_price AS FLOAT64),2)) / revenue),2)
{% endmacro %}