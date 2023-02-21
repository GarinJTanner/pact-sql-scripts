
select paypal_email as example, replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(trim(trailing substring_index(paypal_email, '@', -1) from paypal_email),'@',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'0',''),'!',''),'#',''),'$',''),'%',''),'^',''),'&',''),'*',''),'(',''),')',''),'_',''),'+' ,''),',',''),'<',''),'.',''),'>',''),'/',''),'?',''),';',''),':',''),'"',''),'{','') ,']',''),'}','') 
as email_commonality,
replace(trim(trailing substring_index(paypal_email, '@', -1) from paypal_email),'@','')
as email_commonality2, count(*)

from money_accounts where active=1 and paypal_verified_status=1 and deleted_at is null and paypal_email is not null and user_id in (select member_id from attendances where id>=@amonth and status_code=1)

group by email_commonality, email_commonality2

order by count(*) desc limit 100
