select ma.cc_fingerprint, count(distinct ma.user_id) as 'user count', count(u.flag_status=0) as 'non-flag', count(u.flag_status!=0) as flagged from users u, money_accounts ma
where ma.user_id=u.id and ma.cc_fingerprint is not null and ma.user_id in (select member_id from attendances where id>530000000 and status_code=1)

group by ma.cc_fingerprint having 'user count' > 1 order by 'user count' desc limit 500;