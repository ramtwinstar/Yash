{{config (materialized= 'table',
          pre_hook =  ["
                insert into Audityash(
                MODEL_NAME,
                ID NUMBER,
                START_TIME,
                END_TIME,
                USER_NAME) values (
                'EMP_Stg.sql',
                '{{invocation_id}}',
                current_timestamp,
                current_user)"])}}

select * from SOURCEDB.SOURCESCHEMA.SRC_EMPLOYEES
