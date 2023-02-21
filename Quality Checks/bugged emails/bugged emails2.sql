select email from users 
where is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.co%'or
	  is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.co.u%"'or
      is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.ed%' or
	  is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.go%' or
	  is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.mi%' or
	  is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.ne%' or
	  is_deleted=0 and id in (select member_id from attendances where id>@id2 and status_code=1) and email not like "%.com" and email not like "%.edu" and email not like "%.gov" and email not like "%.mil" and email not like "%.net" and email not like "%.org" and email like '%.or%' 


			

