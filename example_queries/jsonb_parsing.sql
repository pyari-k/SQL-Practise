select
	sample_json_logs->>'event' as event,
	cast(sample_json_logs->'details'->>'cost' as numeric(10,2)) as cost
from raw_logs
limit 20
