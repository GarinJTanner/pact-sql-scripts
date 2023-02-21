select ma.user_id, u.email, u.flag_status from money_accounts ma, users u
where ma.user_id=u.id and ma.deleted_at is null and ma.cc_fingerprint is not null and 
ma.cc_fingerprint in (select cc_fingerprint from money_accounts where 
user_id=@user_id
);