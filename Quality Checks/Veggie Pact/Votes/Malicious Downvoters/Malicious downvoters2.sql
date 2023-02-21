select user_id, 
sum(CASE WHEN opinion=0 and voteable_id in (select id from attendances where status_code=1) then 1 else 0 end) as failed_downvotes,
sum(CASE WHEN opinion=0 then 1 else 0 end) as total_downvotes,
sum(CASE WHEN opinion=1 then 1 else 0 end) as upvotes

from votes where user_id in (select id from users where is_deleted=0 and flag_status=0)

group by user_id having failed_downvotes > 0.5*total_downvotes and total_downvotes>200 order by failed_downvotes desc limit 10;