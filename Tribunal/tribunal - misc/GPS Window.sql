select id,  flag_status, login, email, current_login_ip, last_login_ip from users
where id in (

select member_id from attendances
where id>@amonth and checkin_latitude>@checkin_latitudeBL and checkin_longitude>@checkin_longitudeBL and checkin_latitude<@checkin_latitudeTR and checkin_longitude<@checkin_longitudeTR


)