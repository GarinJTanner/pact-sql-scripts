-- imp_MFP
select created_at, enter, value1, value2 from attendances where member_id=@user_id and value2>35000 and activity_type_code=101 and status_code=1