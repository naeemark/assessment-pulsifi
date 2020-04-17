
/*
 Prepared by: Naeem<naeemark@gmail.com>
 Date: 16/04/2020 18:43:58
*/	 	
SELECT 
	A.`name`,
	A.gender,
	C.last_action, 
	C.last_action_time,
	C.2nd_last_action,
	C.2nd_last_action_time
FROM profile A
LEFT OUTER JOIN(
  SELECT
    (SELECT a.action_type FROM profile_action pa LEFT JOIN action a ON a.action_id = pa.action_id WHERE B.profile_id = pa.profile_id ORDER BY created_at DESC LIMIT 1) AS last_action,
    (SELECT pa.created_at FROM profile_action pa LEFT JOIN action a ON a.action_id = pa.action_id WHERE B.profile_id = pa.profile_id ORDER BY created_at DESC LIMIT 1) AS last_action_time,
	(SELECT a.action_type FROM profile_action pa LEFT JOIN action a ON a.action_id = pa.action_id WHERE B.profile_id = pa.profile_id ORDER BY created_at DESC LIMIT 1, 1) AS 2nd_last_action,
	(SELECT pa.created_at FROM profile_action pa LEFT JOIN action a ON a.action_id = pa.action_id WHERE B.profile_id = pa.profile_id ORDER BY created_at DESC LIMIT 1, 1) AS 2nd_last_action_time,
    B.profile_id AS pid
  FROM profile_action B GROUP BY B.profile_id
  ) AS C ON C.pid = A.profile_id;