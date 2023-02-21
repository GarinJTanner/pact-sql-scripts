select email from users where is_deleted=0 and flag_status=0 and id in (select user_id from pacts 
where program_type=1 and id>@pmonth and days_attended!=days_committed and processing_status not in ('2','15','22','23','28','31','51') and
created_at>date_add(start_date, interval +2 day))