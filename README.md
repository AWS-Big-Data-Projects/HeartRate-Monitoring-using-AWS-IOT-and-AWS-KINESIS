# HeartRate-Monitoring-using-AWS-IOT-and-AWS-KINESIS


Heart rate monitoring using aws-iot,aws-kinesis,amazon-athena and visualize the data using amazon quicksight

![image](https://user-images.githubusercontent.com/48589838/77186843-8a6cab80-6af9-11ea-8f23-2e61b17a89e2.png)


you run a script to mimic multiple sensors publishing messages on an IoT MQTT topic, with one message published every second. The events get sent to AWS IoT, where an IoT rule is configured. The IoT rule captures all messages and sends them to Firehose. From there, Firehose writes the messages in batches to objects stored in S3.  In S3, you set up a table in Athena and use QuickSight to analyze the IoT data.


### Configuring Firehose to write to S3


### Configuring the AWS IoT rule


### Generating sample data


Running the heartrate.py python script generates fictitious IoT messages from multiple userid values. The IoT rule sends the message to Firehose, which writes the data out to S3.


The script assumes that it has access to AWS CLI credentials and that boto3 is installed on the machine running the script.

### Configuring Athena

create table using athenaquery.sql after the query completes u see new table being created.

### Analyzing the data

Now, analyze this data using Athena via QuickSight.

Set up a data source

Log into QuickSight and choose Manage data, New data set. Choose Athena as a new data source.

![image](https://user-images.githubusercontent.com/48589838/77187599-bfc5c900-6afa-11ea-8809-9db69b83c204.png)


Build an analysis


![image](https://user-images.githubusercontent.com/48589838/77187691-e2f07880-6afa-11ea-9ca0-fc372b1728b1.png)



![image](https://user-images.githubusercontent.com/48589838/77187725-ed127700-6afa-11ea-836d-b17eef42c231.png)



###### Reference Material:https://aws.amazon.com/blogs/big-data/derive-insights-from-iot-in-minutes-using-aws-iot-amazon-kinesis-firehose-amazon-athena-and-amazon-quicksight/
