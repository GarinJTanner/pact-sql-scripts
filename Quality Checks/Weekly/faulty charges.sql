select email from users where id in (
select user_id from pacts 

where id>=@pmonth and 

processed=1 and processing_status not in ('4','31') and money_lost!=0 

and created_at>date_add(start_date, interval +2 day)

and ((days_committed - days_attended) * stakes)!=money_lost)
-- how do I pull only device info around the time when the bug occurred

