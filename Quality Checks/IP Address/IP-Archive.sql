select distinct current_login_ip from users where flag_status not in ('0, 32')
union all
select distinct last_login_ip from users where flag_status not in ('0, 32')