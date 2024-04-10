{% macro margin_percent(revenue, purchase_cost) %}
   ROUND((margin_percent = revenue - purchase_cost),2)
{% endmacro %}