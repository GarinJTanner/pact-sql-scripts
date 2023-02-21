select enter, created_at, value1, value2 from attendances 
where member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=2 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=3 or
	  member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=2 or 
	  member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=3 or
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=4 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=5 or
	  member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=6 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=7 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=8 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=9 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=10 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=11 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=12 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=13 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=14 or 
      member_id=@user_id and created_at<DATE_ADD(enter, INTERVAL -2 DAY) and activity_type_code=15
      
order by created_at desc