select distinct(p.user_id), u.email from pacts p, users u where p.user_id=u.id and
p.days_attended=0 and p.processed=0 and p.pact_type=2 and p.program_type=1 and p.processing_status is null and p.start_date>"2016-12-12" and p.end_date<"2016-12-25" and p.user_id in (select user_id from money_accounts where flagged=0 and deleted_at is null and type!="PactBucksAccount")

or p.user_id=u.id and p.days_attended=0 and p.processed=0 and p.pact_type=3 and p.program_type=1 and p.processing_status is null and p.start_date>"2016-12-12" and p.end_date<"2016-12-25" and p.user_id in (select user_id from money_accounts where flagged=0 and deleted_at is null and type!="PactBucksAccount")

