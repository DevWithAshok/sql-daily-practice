SELECT
  DISTINCT channel.channel_id,
  (channel.name) AS channel_name
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
WHERE
  strftime("%Y", published_datetime) < "2016"
  AND video.name LIKE "%music%"
ORDER BY
  channel_name ASC
