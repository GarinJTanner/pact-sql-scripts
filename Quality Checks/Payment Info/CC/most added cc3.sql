select ma1.cc_fingerprint, ma2.user_count, u1.nonflagged, u2.flagged

from money_accounts ma1

join (
select user_id, cc_fingerprint, count(distinct user_id) as user_count
from money_accounts where user_id in (select member_id from attendances where id>540000000 and status_code=1)
) ma2

join (
select id, count(*) as nonflagged
from users 
where flag_status=0 and id in (select member_id from attendances where id>540000000 and status_code=1)

) u1
 
join ( 
select id, count(*) as flagged 
from users
where flag_status!=0 and id in (select member_id from attendances where id>540000000 and status_code=1)

) u2


on ma1.user_id=u1.id and ma1.user_id=u2.id and ma1.user_id=ma2.user_id and ma1.cc_fingerprint=ma2.cc_fingerprint
and ma1.cc_fingerprint is not null 



group by ma1.cc_fingerprint having count(*) > 1 and u1.nonflagged > 3 order by count(*) desc limit 1;

