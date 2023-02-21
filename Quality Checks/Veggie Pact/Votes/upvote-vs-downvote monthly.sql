set @v.query=(
select id from attendances where created_at>date_add(current_timestamp(), interval -39 month) order by id asc limit 1);

select left(a.created_at, 7) as created_at, a1.upvotes, a2.downvotes from attendances a

join (
select left(created_at, 7) as created_at, count(*) as upvotes
from attendances where activity_type_code=201 and status_code=1 and id>@v.query
group by (left(created_at, 7))) a1

join (
select left(created_at, 7) as created_at, count(*) as downvotes
from attendances where activity_type_code=201 and status_code=61 and id>@v.query
group by (left(created_at, 7))) a2

on a.created_at=a1.created_at and a.created_at=a2.created_at and id>@v.query