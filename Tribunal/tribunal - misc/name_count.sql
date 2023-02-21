select id, flag_status, login, email, current_login_ip from users where login in (select login from users where id=@user_id) and id in (select user_id from pacts where program_type=1)
