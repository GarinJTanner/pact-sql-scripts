select value1, value2, count(*) from attendances 
where created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=2 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=3 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=4 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=5 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=6 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=7 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=8 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=9 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=10 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=11 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=12 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=13 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=14 and status_code=1 
   or created_at>@date and member_id=@user_id and value1 is not null and value2 is not null and activity_type_code=15 and status_code=1
		group by value1, value2 having count(*)>1 order by count(*) desc