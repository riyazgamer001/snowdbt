{% macro employeefuname(FNAME,LNAME) %}
{{FNAME}}||''||{{LNAME}}
{% endmacro %}
{% macro employeegen(gen) %}
CASE WHEN {{gen}}='Male' THEN 'M' 
     WHEN {{gen}}='Female' THEN 'F' END  
{% endmacro %}

