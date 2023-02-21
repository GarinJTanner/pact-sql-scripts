select created_at, enter from attendances where member_id=@user_id and created_at< DATE_ADD(enter, INTERVAL -10 DAY)
order by created_at desc
