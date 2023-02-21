select member_id, count(id) from attendances where source="support team" and status_code=1 and id>=@ayear and activity_type_code!=201 and member_id not in (select user_id from bugs where id>=@byear)
group by member_id order by count(id) desc limit 10
