{% macro storage_int_macro() %}
    {% set storage_int %}
    create or replace storage integration ST_INTEGRATION5
    type = external_stage
    storage_provider = s3
    storage_aws_role_arn = 'arn:aws:iam::595083028506:role/AWSS3FULL_SNOW'
    enabled = true
    storage_allowed_locations = ( 's3://storage-snow' );
    {% endset %}
    {% do run_query(storage_int) %}
{% endmacro %}