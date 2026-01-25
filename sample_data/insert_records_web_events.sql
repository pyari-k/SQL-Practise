INSERT INTO web_events (user_id, event_timestamp, event_type) VALUES
(1, '2023-01-01 10:00:00', 'page_view'),
(1, '2023-01-01 10:15:00', 'add_to_cart'),
(1, '2023-01-01 10:25:00', 'page_view'),
(1, '2023-01-01 11:00:00', 'checkout'), -- New session for user 1 (gap > 30 min)
(1, '2023-01-01 11:10:00', 'page_view'),

(2, '2023-01-01 10:05:00', 'page_view'),
(2, '2023-01-01 10:10:00', 'login'),
(2, '2023-01-01 10:20:00', 'page_view'),

(3, '2023-01-01 12:00:00', 'page_view'),
(3, '2023-01-01 12:35:00', 'page_view'), -- New session for user 3 (gap > 30 min)
(3, '2023-01-01 12:45:00', 'add_to_cart'),

(4, '2023-01-01 09:00:00', 'page_view');