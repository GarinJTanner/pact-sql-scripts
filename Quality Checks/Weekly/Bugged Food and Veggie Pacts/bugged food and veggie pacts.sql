set @id=(select id from attendances where id>415000000 and created_at>DATE_ADD(current_timestamp(), INTERVAL -2 YEAR) order by id asc limit 1);
select distinct(user_id) from pacts where 
id>302821142 and days_attended=0 and processed=0 and pact_type=2 and program_type=1 and processing_status is null and start_date>"2017-01-21" and end_date="2017-01-29" 
and user_id in (select member_id from attendances where id>@id and status_code=1)


or id>302821142 and days_attended=0 and processed=0 and pact_type=3 and program_type=1 and processing_status is null and start_date>"2017-01-21" and end_date="2017-01-29" 
and user_id in (select member_id from attendances where id>@id and status_code=1)


