select user_id, left(created_at,10), count(*) from votes where id>=@vweek
group by user_id, left(created_at, 10) having count(*)>1 order by count(*) desc limit 10