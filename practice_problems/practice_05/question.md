# Practice 5: Identify User Sessions

## Scenario
You have a table `web_events` with the following columns:
- `user_id`: The ID of the user.
- `event_timestamp`: The timestamp of the event.
- `event_type`: The type of event.

A `web_events` table is already created and populated with sample data for you.

## Task
Your task is to identify "Sessions." A session is defined as a group of events for a single user where no two consecutive events are more than 30 minutes apart.

Write a SQL query that returns the following for each session:
- `user_id`
- `session_start` (the timestamp of the first event in the session)
- `session_end` (the timestamp of the last event in the session)
- `event_count` (the total number of events in the session)
