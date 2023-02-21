THE TRIBUNAL
A single user evaluation query that pulls all relative metrics on the user.


1. Run Tribunal - I have provided a sample user in the file. You may simply run this after running the perf boost.
It may seem like a lot to look at, but once comfortable with the format, it can be read within seconds.

Look for the section with cc_count, current_ip_count, last_ip_count, etc.

You can see a cc_count of 11 (this is the cc_fingerprint), and a few other flags.


2. Run Single Pull - This query will pull all users that are related to the account.  
You should see a total of 14 users. What I like to do is just look at the users who have an active veggie pact.

At the top of the SINGLE PULL script, set @veggie_pact from 0 to 1.




