{% macro load_PO_Macro() %}
{% set PO_load %}
       create or replace transient table PO_table(Id number,
                                              name varchar,
                                              Age number,
                                              orders number);
    CREATE OR REPLACE FILE FORMAT TEST_FORMAT3
    TYPE=CSV
    FIELD_DELIMITER=','
    SKIP_HEADER=1
    TRIM_SPACE=TRUE;
    create or replace stage ext_stag34
    URL='s3://storage-snow'
    FILE_FORMAT= TEST_FORMAT3
    STORAGE_INTEGRATION= ST_INTEGRATION5;
    create OR REPLACE pipe snow_po
    auto_ingest=true
    as
        COPY INTO PO_table
        FROM @ext_stag34
        ON_ERROR=CONTINUE;
    {% endset %}
    {% do run_query(PO_load) %}
{% endmacro %}


