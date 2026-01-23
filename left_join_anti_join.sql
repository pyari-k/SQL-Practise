select
	c.campaign_id,
	c.campaign_name
from campaigns c
left join impressions i
on c.campaign_id = i.campaign_id
where i.campaign_id is null
