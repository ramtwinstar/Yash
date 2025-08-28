{{config (materialized= 'table',
          pre_hook =  ["
                insert into AUDIT_SCHEMA(
                MODEL_NAME,
                ID,
                START_TIME,
                END_TIME,
                USER_NAME) values (
                'EMP_Stg.sql',
                '{{invocation_id}}',
                current_timestamp,
                null,
                current_user
                )"
                ]
                )}}
                
                select * from {{source('SRC_YASH','SRC_EMPLOYEES')}}
