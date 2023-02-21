select ma1.cc_fingerprint, ma2.count as 'cc_fingerprint count', u1.flag_count, u2.not_flag_count

from money_accounts ma1

left join (
select cc_fingerprint, count(cc_fingerprint) as count
from money_accounts 
where cc_fingerprint is not null
group by cc_fingerprint
) ma2
on ma1.cc_fingerprint=ma2.cc_fingerprint 


left join (
select user_id, cc_fingerprint
from money_accounts 
where cc_fingerprint is not null 
group by user_id
) ma3
on ma1.cc_fingerprint=ma3.cc_fingerprint and ma1.user_id=ma3.user_id 


left join (
select id, count(id) as flag_count
from users
where flag_status!=0
) u1
on ma3.user_id=u1.id

left join (
select id, count(id) as not_flag_count
from users
where flag_status=0
) u2
on ma3.user_id=u2.id



group by ma1.cc_fingerprint having ma2.count > 1 order by ma2.count desc limit 50;

