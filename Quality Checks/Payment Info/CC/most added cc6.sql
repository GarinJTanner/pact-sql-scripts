select ma1.cc_fingerprint, count(ma1.cc_fingerprint), u1.flag_count

from money_accounts ma1


left join (
select user_id, cc_fingerprint
from money_accounts 
where cc_fingerprint is not null 
) ma2
on ma1.cc_fingerprint=ma2.cc_fingerprint and ma2.user_id=ma1.user_id


left join (
select id, count(id) as flag_count
from users
) u1
on ma2.user_id=u1.id



group by ma1.cc_fingerprint having count(ma1.cc_fingerprint) > 1 order by count(ma1.cc_fingerprint) 
desc limit 50;

