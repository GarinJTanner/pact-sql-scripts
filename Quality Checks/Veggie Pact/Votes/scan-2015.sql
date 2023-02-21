set @id=(select id from attendances where id>300000000 and created_at>date_add(current_timestamp(), interval - 2 year) order by id asc limit 1);
select enter, count(*) from attendances where activity_type_code=201 and status_code=1 and id>@id and id<520000001
group by left(enter, 10) order by enter desc