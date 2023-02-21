
select email as example, replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(trim(trailing substring_index(email, '@', -1) from email),'@',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'0',''),'!',''),'#',''),'$',''),'%',''),'^',''),'&',''),'*',''),'(',''),')',''),'_',''),'+' ,''),',',''),'<',''),'.',''),'>',''),'/',''),'?',''),';',''),':',''),'"',''),'{','') ,']',''),'}','') 
as email_commonality,
replace(trim(trailing substring_index(email, '@', -1) from email),'@','')
as email_commonality2, count(*) 

from users where id in (select member_id from attendances where status_code=1 and id>=@amonth)

group by email_commonality, email_commonality2

having count(*)>3

order by count(*)  desc limit 100
