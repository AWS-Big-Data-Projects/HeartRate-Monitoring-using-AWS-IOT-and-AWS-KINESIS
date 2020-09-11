CREATE EXTERNAL TABLE heartrate_iot_data (
    heartRate int,
    userId string,
    rateType string,
    dateTime timestamp)
ROW FORMAT  serde 'org.apache.hive.hcatalog.data.JsonSerDe'
with serdeproperties( 'ignore.malformed.json' = 'true' )
LOCATION 's3://<CREATED-BUCKET>/iot_to_bi_example/'

