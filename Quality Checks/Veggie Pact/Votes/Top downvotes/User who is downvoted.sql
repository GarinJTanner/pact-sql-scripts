select u.email, a.member_id, count(*) as rejected_photos from attendances a, users u where a.member_id=u.id and a.status_code=61 and a.activity_type_code=201 and a.id>534312790


and a.member_id in (select id from users where flag_status=0) and 

-- whitelist
a.member_id not in (13947785)


group by a.member_id having rejected_photos > 10 order by rejected_photos desc limit 500;