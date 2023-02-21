set @pc="bekah_warner";

select id, email, flag_status from users where id in (select user_id from money_accounts where paypal_email like concat(@pc,'%'))


