select ma1.cc_fingerprint, ma2.count as 'cc_fingerprint count', u1.nonflagged as 'non-flagged', u2.flagged as 'flagged'

from money_accounts ma1

join (
select cc_fingerprint, count(*) as count
from money_accounts where cc_fingerprint is not null
group by cc_fingerprint
) ma2

join ( 
select distinct user_id, cc_fingerprint
from money_accounts
where cc_fingerprint is not null
group by user_id
) ma3

join (
select id, count(*) as nonflagged
from users 
where flag_status=0 and id in (select member_id from attendances where id>540000000 and status_code=1)
group by id
) u1
 
join ( 
select id, count(*) as flagged 
from users
where flag_status!=0 and id in (select member_id from attendances where id>540000000 and status_code=1)
group by id
) u2


on ma1.user_id=u1.id and ma1.user_id=u2.id and ma1.user_id=ma3.user_id and ma1.cc_fingerprint=ma2.cc_fingerprint and ma1.cc_fingerprint=ma3.cc_fingerprint



group by ma1.cc_fingerprint having ma2.count > 1 limit 1;

