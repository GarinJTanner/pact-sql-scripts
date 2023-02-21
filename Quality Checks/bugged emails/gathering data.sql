select distinct right(replace(replace(replace(email, 'DELETED', ''), id, ''),'FRAUD',''),5) from users where email like "%.%"

