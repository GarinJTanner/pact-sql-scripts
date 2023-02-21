select u.id, b.created_at, u.email, a.mfp_dupe 
from users u

join (
select member_id, created_at, count(*) as mfp_dupe 
from attendances where activity_type_code=101 and status_code=1 and id>@ayear
group by member_id, value1, value2) a

join (
select user_id, created_at from bugs where zd_user_issue="food_pact_warning"
group by user_id order by created_at asc) b

on u.id=a.member_id and a.member_id=b.user_id and a.created_at>b.created_at and u.is_deleted=0
having a.mfp_dupe>30