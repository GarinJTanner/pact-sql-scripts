select distinct(user_id) from pacts where 
days_attended=0 and processed=0 and pact_type=2 and program_type=1 and processing_status is null and start_date>"2016-10-01" and end_date<"2016-12-04" and user_id in (select member_id from attendances where enter>"2016-11-01" and status_code=1)


or days_attended=0 and processed=0 and pact_type=3 and program_type=1 and processing_status is null and start_date>"2016-10-01" and end_date<"2016-12-04" and user_id in (select member_id from attendances where enter>"2016-11-01" and status_code=1)


