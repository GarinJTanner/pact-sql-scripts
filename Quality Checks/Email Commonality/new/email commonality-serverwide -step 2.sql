set @c="nikd";

select id, email, flag_status from users where email like concat(@c,'%')


