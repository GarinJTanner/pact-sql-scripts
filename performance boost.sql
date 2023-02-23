-- ATTENDANCES
set @ayear=(select id from attendances where id>=527902417 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @amonth=(select id from attendances where id>=547105829 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @aweek=(select id from attendances where id>=548263828 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @aday=(select id from attendances where id>=548494808 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- BUGS
set @byear=(select id from bugs where id>=6831948 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @bmonth=(select id from bugs where id>=7004528 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @bweek=(select id from bugs where id>=7014296 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @bday=(select id from bugs where id>=7016678 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- DEVICES
set @dyear=(select id from devices where id>=16441136 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @dmonth=(select id from devices where id>=16672040 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @dweek=(select id from devices where id>=16686232 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @dday=(select id from devices where id>=16689524 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- GYMS
set @gyear=(select id from gyms where id>=2357150 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @gmonth=(select id from gyms where id>=2386761 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @gweek=(select id from gyms where id>=2388685 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @gday=(select id from gyms where id>=2389217 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- MONEY TRANSACTIONS
set @mtyear=(select id from money_transactions where id>=63125080 and created_at>=DATE_ADD(current_timestamp(), INTERVAL - 1 YEAR)  order by id asc limit 1);
set @mtmonth=(select id from money_transactions where id>=66103109 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @mtweek=(select id from money_transactions where id>=66334898 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id  asc limit  1);
set @mtday=(select id from money_transactions where id>=66335823 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id  asc limit  1);

-- PACTS
set @pyear=(select id from pacts where id>=302821142 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @pmonth=(select id from pacts where id>=312150164 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @pweek=(select id from pacts where id>=314100450 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @pday=(select id from pacts where id>=315951719 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- USERS
set @u4year=(select id from users where id>=9953901 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -4 YEAR) order by id asc limit 1);
set @u3year=(select id from users where id>=14085877 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -3 YEAR) order by id asc limit 1);
set @u2year=(select id from users where id>=15974398 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -2 YEAR) order by id asc limit 1);
set @uyear=(select id from users where id>=17526364 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @umonth=(select id from users where id>=17694126 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @uweek=(select id from users where id>=17704063 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @uday=(select id from users where id>=17707194 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- USERS_DEVICES
set @udyear=(select id from users_devices where id>=9245996 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @udmonth=(select id from users_devices where id>=9370925 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @udweek=(select id from users_devices where id>=9378608 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @udday=(select id from users_devices where id>=9380485 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);

-- VOTES
set @vyear=(select id from votes where id>=796367418 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 YEAR) order by id asc limit 1);
set @vmonth=(select id from votes where id>=815250534 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 MONTH) order by id asc limit 1);
set @vweek=(select id from votes where id>=816177556 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 WEEK) order by id asc limit 1);
set @vday=(select id from votes where id>=816399816 and created_at>=DATE_ADD(current_timestamp(), INTERVAL -1 DAY) order by id asc limit 1);


select '--ATTENDANCES--', @ayear, @amonth, @aweek, @aday, '--BUGS--', @byear,  @bmonth, @bweek, @bday, '--DEVICES--', @dyear, @dmonth, @dweek, @dday, '--GYMS--', @gyear, @gmonth, @gweek, @gday, '--MONEY TRANSACTIONS--', @mtyear, @mtmonth, @mtweek, @mtday, '--PACTS--', @pyear, @pmonth, @pweek, @pday, '--USERS--', @u4year, @u3year, @u2year, @uyear, @umonth, @uweek, @uday, '--USERS_DEVICES--', @udyear, @udmonth, @udweek, @udday, '--VOTES--', @vyear, @vmonth, @vweek, @vday
