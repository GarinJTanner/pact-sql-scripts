select created_at, opinion, count(*) from votes where user_id=14440667
group by left(created_at, 10) order by count(*) desc