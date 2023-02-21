select flag_status, email, id from users 
where flag_status=0 and current_login_ip like "220.255.1.%" 
and id in (select member_id from attendances where id>@ayear and activity_type_code=201)
or flag_status!=0 and last_login_ip like "220.255.1.%" 
and id in (select member_id from attendances where id>@ayear and activity_type_code=201)