select user_id, sum(amount) from money_transactions where type="rewardadjustment" and item_type="User" and amount>0
group by user_id order by sum(amount) desc