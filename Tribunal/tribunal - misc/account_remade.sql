select id, flag_status, login, email, created_at, deleted_time from users where email like concat((select email from users where id=@user_id),'%')
order by deleted_time 