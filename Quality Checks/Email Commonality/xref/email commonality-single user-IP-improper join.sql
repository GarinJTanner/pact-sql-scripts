set @c="pact";
set @n=5;
set @u1=6;
set @u2=7;
set @u3=8;
set @u4=9;
set @u5=10;

set @id2=(select id from attendances where id>540000000 and created_at>DATE_ADD(current_timestamp(), INTERVAL -1 month) order by id asc limit 1);

select u1.id, u1.current_login_ip, u4.total, u2.flag_count, u3.not_flag_count, 

replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(trim(trailing substring_index(u1.email, '@', -1) from u1.email),'@',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'0',''),'!',''),'#',''),'$',''),'%',''),'^',''),'&',''),'*',''),'(',''),')',''),'_',''),'+' ,''),',',''),'<',''),'.',''),'>',''),'/',''),'?',''),';',''),':',''),'"',''),'{','') ,']',''),'}','') 
as email_commonality from users u1 

join (
select current_login_ip, count(*) as flag_count
from users where flag_status!=0 
group by current_login_ip) u2


join (
select current_login_ip, count(*) as not_flag_count
from users where flag_status=0 and email not like "%FRAUD%" 


group by current_login_ip) u3


join (
select current_login_ip, count(*) as total
from users
group by current_login_ip) u4


on  u1.current_login_ip=u2.current_login_ip 
and u1.current_login_ip=u3.current_login_ip 
and u1.current_login_ip=u4.current_login_ip 

where case when length(@c) >= @u5
 then u1.email like concat(left(@c,0),'_____',substr(@c,6,20),'%') 
	or u1.email like concat(left(@c,1),'_____',substr(@c,7,19),'%') 
	or u1.email like concat(left(@c,2),'_____',substr(@c,8,18),'%') 
	or u1.email like concat(left(@c,3),'_____',substr(@c,9,17),'%') 
	or u1.email like concat(left(@c,4),'_____',substr(@c,10,16),'%') 
	or u1.email like concat(left(@c,5),'_____',substr(@c,11,15),'%') 
	or u1.email like concat(left(@c,6),'_____',substr(@c,12,14),'%') 
	or u1.email like concat(left(@c,7),'_____',substr(@c,13,13),'%') 
	or u1.email like concat(left(@c,8),'_____',substr(@c,14,12),'%') 
	or u1.email like concat(left(@c,9),'_____',substr(@c,15,11),'%') 
	or u1.email like concat(left(@c,10),'_____',substr(@c,16,10),'%') 
	or u1.email like concat(left(@c,11),'_____',substr(@c,17,9),'%') 
	or u1.email like concat(left(@c,12),'_____',substr(@c,18,8),'%') 
	or u1.email like concat(left(@c,13),'_____',substr(@c,19,7),'%') 
	or u1.email like concat(left(@c,14),'_____',substr(@c,20,6),'%') 
	or u1.email like concat(left(@c,15),'_____',substr(@c,21,5),'%') 
	or u1.email like concat(left(@c,16),'_____',substr(@c,22,4),'%') 
	or u1.email like concat(left(@c,17),'_____',substr(@c,23,3),'%') 
	or u1.email like concat(left(@c,18),'_____',substr(@c,24,2),'%') 
	or u1.email like concat(left(@c,19),'_____',substr(@c,25,1),'%') 
	or u1.email like concat(left(@c,20),'_____','%') 
    
	or u1.email like concat('%',left(@c,0),'_____',substr(@c,6,20)) 
	or u1.email like concat('%',left(@c,1),'_____',substr(@c,7,19)) 
	or u1.email like concat('%',left(@c,2),'_____',substr(@c,8,18)) 
	or u1.email like concat('%',left(@c,3),'_____',substr(@c,9,17)) 
	or u1.email like concat('%',left(@c,4),'_____',substr(@c,10,16)) 
	or u1.email like concat('%',left(@c,5),'_____',substr(@c,11,15)) 
	or u1.email like concat('%',left(@c,6),'_____',substr(@c,12,14)) 
	or u1.email like concat('%',left(@c,7),'_____',substr(@c,13,13)) 
	or u1.email like concat('%',left(@c,8),'_____',substr(@c,14,12)) 
	or u1.email like concat('%',left(@c,9),'_____',substr(@c,15,11)) 
	or u1.email like concat('%',left(@c,10),'_____',substr(@c,16,10)) 
	or u1.email like concat('%',left(@c,11),'_____',substr(@c,17,9)) 
	or u1.email like concat('%',left(@c,12),'_____',substr(@c,18,8)) 
	or u1.email like concat('%',left(@c,13),'_____',substr(@c,19,7)) 
	or u1.email like concat('%',left(@c,14),'_____',substr(@c,20,6)) 
	or u1.email like concat('%',left(@c,15),'_____',substr(@c,21,5)) 
	or u1.email like concat('%',left(@c,16),'_____',substr(@c,22,4)) 
	or u1.email like concat('%',left(@c,17),'_____',substr(@c,23,3)) 
	or u1.email like concat('%',left(@c,18),'_____',substr(@c,24,2)) 
	or u1.email like concat('%',left(@c,19),'_____',substr(@c,25,1)) 
	or u1.email like concat('%',left(@c,20),'_____')     

when length(@c) >= @u4
  then u1.email like concat(left(@c,0),'____',substr(@c,5,21),'%') 
	or u1.email like concat(left(@c,1),'____',substr(@c,6,20),'%') 
	or u1.email like concat(left(@c,2),'____',substr(@c,7,19),'%') 
	or u1.email like concat(left(@c,3),'____',substr(@c,8,18),'%') 
	or u1.email like concat(left(@c,4),'____',substr(@c,9,17),'%') 
	or u1.email like concat(left(@c,5),'____',substr(@c,10,16),'%') 
	or u1.email like concat(left(@c,6),'____',substr(@c,11,15),'%') 
	or u1.email like concat(left(@c,7),'____',substr(@c,12,14),'%') 
	or u1.email like concat(left(@c,8),'____',substr(@c,13,13),'%') 
	or u1.email like concat(left(@c,9),'____',substr(@c,14,12),'%') 
	or u1.email like concat(left(@c,10),'____',substr(@c,15,11),'%') 
	or u1.email like concat(left(@c,11),'____',substr(@c,16,10),'%') 
	or u1.email like concat(left(@c,12),'____',substr(@c,17,9),'%') 
	or u1.email like concat(left(@c,13),'____',substr(@c,18,8),'%') 
	or u1.email like concat(left(@c,14),'____',substr(@c,19,7),'%') 
	or u1.email like concat(left(@c,15),'____',substr(@c,20,6),'%') 
	or u1.email like concat(left(@c,16),'____',substr(@c,21,5),'%') 
	or u1.email like concat(left(@c,17),'____',substr(@c,22,4),'%') 
	or u1.email like concat(left(@c,18),'____',substr(@c,23,3),'%') 
	or u1.email like concat(left(@c,19),'____',substr(@c,24,2),'%') 
	or u1.email like concat(left(@c,20),'____',substr(@c,25,1),'%') 
	or u1.email like concat(left(@c,21),'____','%') 
	
 	or u1.email like concat('%',left(@c,0),'____',substr(@c,5,21)) 
	or u1.email like concat('%',left(@c,1),'____',substr(@c,6,20)) 
	or u1.email like concat('%',left(@c,2),'____',substr(@c,7,19)) 
	or u1.email like concat('%',left(@c,3),'____',substr(@c,8,18)) 
	or u1.email like concat('%',left(@c,4),'____',substr(@c,9,17)) 
	or u1.email like concat('%',left(@c,5),'____',substr(@c,10,16)) 
	or u1.email like concat('%',left(@c,6),'____',substr(@c,11,15)) 
	or u1.email like concat('%',left(@c,7),'____',substr(@c,12,14)) 
	or u1.email like concat('%',left(@c,8),'____',substr(@c,13,13)) 
	or u1.email like concat('%',left(@c,9),'____',substr(@c,14,12)) 
	or u1.email like concat('%',left(@c,10),'____',substr(@c,15,11)) 
	or u1.email like concat('%',left(@c,11),'____',substr(@c,16,10)) 
	or u1.email like concat('%',left(@c,12),'____',substr(@c,17,9)) 
	or u1.email like concat('%',left(@c,13),'____',substr(@c,18,8)) 
	or u1.email like concat('%',left(@c,14),'____',substr(@c,19,7)) 
	or u1.email like concat('%',left(@c,15),'____',substr(@c,20,6)) 
	or u1.email like concat('%',left(@c,16),'____',substr(@c,21,5)) 
	or u1.email like concat('%',left(@c,17),'____',substr(@c,22,4)) 
	or u1.email like concat('%',left(@c,18),'____',substr(@c,23,3)) 
	or u1.email like concat('%',left(@c,19),'____',substr(@c,24,2)) 
	or u1.email like concat('%',left(@c,20),'____',substr(@c,25,1)) 
	or u1.email like concat('%',left(@c,21),'____') 

when length(@c) >= @u3
  then u1.email like concat(left(@c,0),'___',substr(@c,4,22),'%') 
	or u1.email like concat(left(@c,1),'___',substr(@c,5,21),'%') 
	or u1.email like concat(left(@c,2),'___',substr(@c,6,20),'%') 
	or u1.email like concat(left(@c,3),'___',substr(@c,7,19),'%') 
	or u1.email like concat(left(@c,4),'___',substr(@c,8,18),'%') 
	or u1.email like concat(left(@c,5),'___',substr(@c,9,17),'%') 
	or u1.email like concat(left(@c,6),'___',substr(@c,10,16),'%') 
	or u1.email like concat(left(@c,7),'___',substr(@c,11,15),'%') 
	or u1.email like concat(left(@c,8),'___',substr(@c,12,14),'%') 
	or u1.email like concat(left(@c,9),'___',substr(@c,13,13),'%') 
	or u1.email like concat(left(@c,10),'___',substr(@c,14,12),'%') 
	or u1.email like concat(left(@c,11),'___',substr(@c,15,11),'%') 
	or u1.email like concat(left(@c,12),'___',substr(@c,16,10),'%') 
	or u1.email like concat(left(@c,13),'___',substr(@c,17,9),'%') 
	or u1.email like concat(left(@c,14),'___',substr(@c,18,8),'%') 
	or u1.email like concat(left(@c,15),'___',substr(@c,19,7),'%') 
	or u1.email like concat(left(@c,16),'___',substr(@c,20,6),'%') 
	or u1.email like concat(left(@c,17),'___',substr(@c,21,5),'%') 
	or u1.email like concat(left(@c,18),'___',substr(@c,22,4),'%') 
	or u1.email like concat(left(@c,19),'___',substr(@c,23,3),'%') 
	or u1.email like concat(left(@c,20),'___',substr(@c,24,2),'%') 
	or u1.email like concat(left(@c,21),'___',substr(@c,25,1),'%') 
	or u1.email like concat(left(@c,22),'___','%') 
    
	or u1.email like concat('%',left(@c,0),'___',substr(@c,4,22)) 
	or u1.email like concat('%',left(@c,1),'___',substr(@c,5,21)) 
	or u1.email like concat('%',left(@c,2),'___',substr(@c,6,20)) 
	or u1.email like concat('%',left(@c,3),'___',substr(@c,7,19)) 
	or u1.email like concat('%',left(@c,4),'___',substr(@c,8,18)) 
	or u1.email like concat('%',left(@c,5),'___',substr(@c,9,17)) 
	or u1.email like concat('%',left(@c,6),'___',substr(@c,10,16)) 
	or u1.email like concat('%',left(@c,7),'___',substr(@c,11,15)) 
	or u1.email like concat('%',left(@c,8),'___',substr(@c,12,14)) 
	or u1.email like concat('%',left(@c,9),'___',substr(@c,13,13)) 
	or u1.email like concat('%',left(@c,10),'___',substr(@c,14,12)) 
	or u1.email like concat('%',left(@c,11),'___',substr(@c,15,11)) 
	or u1.email like concat('%',left(@c,12),'___',substr(@c,16,10)) 
	or u1.email like concat('%',left(@c,13),'___',substr(@c,17,9)) 
	or u1.email like concat('%',left(@c,14),'___',substr(@c,18,8)) 
	or u1.email like concat('%',left(@c,15),'___',substr(@c,19,7)) 
	or u1.email like concat('%',left(@c,16),'___',substr(@c,20,6)) 
	or u1.email like concat('%',left(@c,17),'___',substr(@c,21,5)) 
	or u1.email like concat('%',left(@c,18),'___',substr(@c,22,4)) 
	or u1.email like concat('%',left(@c,19),'___',substr(@c,23,3)) 
	or u1.email like concat('%',left(@c,20),'___',substr(@c,24,2)) 
	or u1.email like concat('%',left(@c,21),'___',substr(@c,25,1)) 
	or u1.email like concat('%',left(@c,22),'___') 
    
when length(@c) >= @u2
  then u1.email like concat(left(@c,0),'__',substr(@c,3,23),'%') 
	or u1.email like concat(left(@c,1),'__',substr(@c,4,22),'%') 
	or u1.email like concat(left(@c,2),'__',substr(@c,5,21),'%') 
	or u1.email like concat(left(@c,3),'__',substr(@c,6,20),'%') 
	or u1.email like concat(left(@c,4),'__',substr(@c,7,19),'%') 
	or u1.email like concat(left(@c,5),'__',substr(@c,8,18),'%') 
	or u1.email like concat(left(@c,6),'__',substr(@c,9,17),'%') 
	or u1.email like concat(left(@c,7),'__',substr(@c,10,16),'%') 
	or u1.email like concat(left(@c,8),'__',substr(@c,11,15),'%') 
	or u1.email like concat(left(@c,9),'__',substr(@c,12,14),'%') 
	or u1.email like concat(left(@c,10),'__',substr(@c,13,13),'%') 
	or u1.email like concat(left(@c,11),'__',substr(@c,14,12),'%') 
	or u1.email like concat(left(@c,12),'__',substr(@c,15,11),'%') 
	or u1.email like concat(left(@c,13),'__',substr(@c,16,10),'%') 
	or u1.email like concat(left(@c,14),'__',substr(@c,17,9),'%') 
	or u1.email like concat(left(@c,15),'__',substr(@c,18,8),'%') 
	or u1.email like concat(left(@c,16),'__',substr(@c,19,7),'%') 
	or u1.email like concat(left(@c,17),'__',substr(@c,20,6),'%') 
	or u1.email like concat(left(@c,18),'__',substr(@c,21,5),'%') 
	or u1.email like concat(left(@c,19),'__',substr(@c,22,4),'%') 
	or u1.email like concat(left(@c,20),'__',substr(@c,23,3),'%') 
	or u1.email like concat(left(@c,21),'__',substr(@c,24,2),'%') 
	or u1.email like concat(left(@c,22),'__',substr(@c,25,1),'%') 
	or u1.email like concat(left(@c,23),'__','%') 
    
	or u1.email like concat('%',left(@c,0),'__',substr(@c,3,23)) 
	or u1.email like concat('%',left(@c,1),'__',substr(@c,4,22)) 
	or u1.email like concat('%',left(@c,2),'__',substr(@c,5,21)) 
	or u1.email like concat('%',left(@c,3),'__',substr(@c,6,20)) 
	or u1.email like concat('%',left(@c,4),'__',substr(@c,7,19)) 
	or u1.email like concat('%',left(@c,5),'__',substr(@c,8,18)) 
	or u1.email like concat('%',left(@c,6),'__',substr(@c,9,17)) 
	or u1.email like concat('%',left(@c,7),'__',substr(@c,10,16)) 
	or u1.email like concat('%',left(@c,8),'__',substr(@c,11,15)) 
	or u1.email like concat('%',left(@c,9),'__',substr(@c,12,14)) 
	or u1.email like concat('%',left(@c,10),'__',substr(@c,13,13)) 
	or u1.email like concat('%',left(@c,11),'__',substr(@c,14,12)) 
	or u1.email like concat('%',left(@c,12),'__',substr(@c,15,11)) 
	or u1.email like concat('%',left(@c,13),'__',substr(@c,16,10)) 
	or u1.email like concat('%',left(@c,14),'__',substr(@c,17,9)) 
	or u1.email like concat('%',left(@c,15),'__',substr(@c,18,8)) 
	or u1.email like concat('%',left(@c,16),'__',substr(@c,19,7)) 
	or u1.email like concat('%',left(@c,17),'__',substr(@c,20,6)) 
	or u1.email like concat('%',left(@c,18),'__',substr(@c,21,5)) 
	or u1.email like concat('%',left(@c,19),'__',substr(@c,22,4)) 
	or u1.email like concat('%',left(@c,20),'__',substr(@c,23,3)) 
	or u1.email like concat('%',left(@c,21),'__',substr(@c,24,2)) 
	or u1.email like concat('%',left(@c,22),'__',substr(@c,25,1)) 
	or u1.email like concat('%',left(@c,23),'__')  

when length(@c) >= @u1 
  then u1.email like concat(left(@c,0),'_',substr(@c,2,24),'%') 
	or u1.email like concat(left(@c,1),'_',substr(@c,3,23),'%') 
	or u1.email like concat(left(@c,2),'_',substr(@c,4,22),'%') 
	or u1.email like concat(left(@c,3),'_',substr(@c,5,21),'%') 
	or u1.email like concat(left(@c,4),'_',substr(@c,6,20),'%') 
	or u1.email like concat(left(@c,5),'_',substr(@c,7,19),'%') 
	or u1.email like concat(left(@c,6),'_',substr(@c,8,18),'%') 
	or u1.email like concat(left(@c,7),'_',substr(@c,9,17),'%') 
	or u1.email like concat(left(@c,8),'_',substr(@c,10,16),'%') 
	or u1.email like concat(left(@c,9),'_',substr(@c,11,15),'%') 
	or u1.email like concat(left(@c,10),'_',substr(@c,12,14),'%') 
	or u1.email like concat(left(@c,11),'_',substr(@c,13,13),'%') 
	or u1.email like concat(left(@c,12),'_',substr(@c,14,12),'%') 
	or u1.email like concat(left(@c,13),'_',substr(@c,15,11),'%') 
	or u1.email like concat(left(@c,14),'_',substr(@c,16,10),'%') 
	or u1.email like concat(left(@c,15),'_',substr(@c,17,9),'%') 
	or u1.email like concat(left(@c,16),'_',substr(@c,18,8),'%') 
	or u1.email like concat(left(@c,17),'_',substr(@c,19,7),'%') 
	or u1.email like concat(left(@c,18),'_',substr(@c,20,6),'%') 
	or u1.email like concat(left(@c,19),'_',substr(@c,21,5),'%') 
	or u1.email like concat(left(@c,20),'_',substr(@c,22,4),'%') 
	or u1.email like concat(left(@c,21),'_',substr(@c,23,3),'%') 
	or u1.email like concat(left(@c,22),'_',substr(@c,24,2),'%') 
	or u1.email like concat(left(@c,23),'_',substr(@c,25,1),'%') 
	or u1.email like concat(left(@c,24),'_','%') 
    
	or u1.email like concat('%',left(@c,0),'_',substr(@c,2,24)) 
	or u1.email like concat('%',left(@c,1),'_',substr(@c,3,23)) 
	or u1.email like concat('%',left(@c,2),'_',substr(@c,4,22)) 
	or u1.email like concat('%',left(@c,3),'_',substr(@c,5,21)) 
	or u1.email like concat('%',left(@c,4),'_',substr(@c,6,20)) 
	or u1.email like concat('%',left(@c,5),'_',substr(@c,7,19)) 
	or u1.email like concat('%',left(@c,6),'_',substr(@c,8,18)) 
	or u1.email like concat('%',left(@c,7),'_',substr(@c,9,17)) 
	or u1.email like concat('%',left(@c,8),'_',substr(@c,10,16)) 
	or u1.email like concat('%',left(@c,9),'_',substr(@c,11,15)) 
	or u1.email like concat('%',left(@c,10),'_',substr(@c,12,14)) 
	or u1.email like concat('%',left(@c,11),'_',substr(@c,13,13)) 
	or u1.email like concat('%',left(@c,12),'_',substr(@c,14,12)) 
	or u1.email like concat('%',left(@c,13),'_',substr(@c,15,11)) 
	or u1.email like concat('%',left(@c,14),'_',substr(@c,16,10)) 
	or u1.email like concat('%',left(@c,15),'_',substr(@c,17,9)) 
	or u1.email like concat('%',left(@c,16),'_',substr(@c,18,8)) 
	or u1.email like concat('%',left(@c,17),'_',substr(@c,19,7)) 
	or u1.email like concat('%',left(@c,18),'_',substr(@c,20,6)) 
	or u1.email like concat('%',left(@c,19),'_',substr(@c,21,5)) 
	or u1.email like concat('%',left(@c,20),'_',substr(@c,22,4)) 
	or u1.email like concat('%',left(@c,21),'_',substr(@c,23,3)) 
	or u1.email like concat('%',left(@c,22),'_',substr(@c,24,2)) 
	or u1.email like concat('%',left(@c,23),'_',substr(@c,25,1)) 
	or u1.email like concat('%',left(@c,24),'_')


when length(@c) <= @n
	then email like concat(@c,'%') 
      or email like concat('%',@c) 
      

  else null end
   

group by u1.current_login_ip