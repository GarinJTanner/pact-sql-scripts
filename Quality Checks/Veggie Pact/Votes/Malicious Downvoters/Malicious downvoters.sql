select user_id, sum(CASE WHEN opinion=0 then 1 else 0 end) as Downvotes,
       sum(CASE WHEN opinion=1 then 1 else 0 end) as Upvotes

from votes where user_id in (select id from users where is_deleted=0)

group by user_id having downvotes > upvotes *10 and upvotes!=0 order by Downvotes desc limit 500;