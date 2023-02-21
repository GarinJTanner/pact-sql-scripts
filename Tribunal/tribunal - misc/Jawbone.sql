select  value1, value2, created_at, enter from attendances 
	where member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=10000 and value1<=15000 and value2<=18 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=15000 and value1<=20000 and value2<=37 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=20000 and value1<=30000 and value2<=50 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=30000 and value1<=40000 and value2<=75 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=40000 and value1<=50000 and value2<=100 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=50000 and value1<=60000 and value2<=125 
	   or member_id=@user_id and activity_type_code=51 and status_code=1 and value1>=60000 and value1<=70000 and value2<=150