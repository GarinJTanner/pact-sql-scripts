select user_id, left(created_at, 10) as created_at, count(*) from votes where id>810000000
group by user_id, left(created_at, 10) having count(*)>1 order by created_at desc


-- join ip count