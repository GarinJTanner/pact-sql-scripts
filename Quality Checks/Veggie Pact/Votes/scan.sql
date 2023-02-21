set @id=(select id from attendances where id>520000000 and created_at>date_add(current_timestamp(), interval - 1 year) order by id asc limit 1);
select enter, count(*) from attendances where activity_type_code=201 and status_code=61 and id>@id
group by left(enter, 10) order by enter desc