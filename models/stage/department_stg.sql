{{config (materialized = 'table')}}

select * from {{source('SRC_YASH','SRC_DEPARTMENTS')}}