-- set @v.query=(select id from attendances where created_at>date_add(current_timestamp(), interval -39 month) order by id asc limit 1);

select left(v.created_at, 7) as created_at, v1.upvotes, v2.downvotes from votes v

join (
select left(created_at, 7) as created_at, count(*) as upvotes
from votes where voteable_id in (select id from attendances where activity_type_code=201 and status_code=1 and id>540000000)
group by left(created_at, 7)) v1

join (
select left(created_at, 7) as created_at, count(*) as downvotes
from votes where voteable_id in (select id from attendances where activity_type_code=201 and status_code=61 and id>540000000)
group by left(created_at, 7)) v2

on v.created_at=v1.created_at and v.created_at=v2.created_at limit 1

