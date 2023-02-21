select cc_fingerprint, count(distinct user_id) as cnt from money_accounts 
where cc_fingerprint is not null and user_id in (select member_id from attendances where id>@ayear and status_code=1)

group by cc_fingerprint having cnt > 1 order by cnt desc limit 50;