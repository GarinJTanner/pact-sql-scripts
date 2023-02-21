select created_at, photo_url, photo_url from attendances where member_id=@user_id and status_code=61 and activity_type_code=201
order by created_at desc