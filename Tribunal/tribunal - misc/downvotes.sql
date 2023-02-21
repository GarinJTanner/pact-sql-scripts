select a.created_at, a.photo_url, v.message from attendances a, votes v where a.id=v.voteable_id and v.user_id=@user_id and v.opinion=0 and a.status_code=1
order by a.created_at desc