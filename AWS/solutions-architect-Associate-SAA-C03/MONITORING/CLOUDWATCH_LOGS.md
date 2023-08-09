#### What is CloudWatch Logs?

___
CloudWatch Logs is a tool that allows you to **monitor**, **store**, and **access log files** from a variety of
different sources. It gives you the ability to query your logs to look for **potential issues** of data that is relevant
to you.

#### 3 CloudWatch Logs Terms:

___

1. **Log Event**: This is the record of what happened. It contains a timestamp and the data.
2. **Log Stream**: A collection of **log events** from the same source create a **log stream**. Think of one continuous
   set of logs from a single instance.
3. **Log Group**: This is a collection of **log streams**. For example, you would group all your Apache web server logs
   across hosts together.

#### CloudWatch Logs Feature

___

* **File Patterns**: You can look for specific terms in your logs. Think 400 errors in your web server logs.
* **CloudWatch Logs Insights**: This allows you to query all your logs using a SQL-like interactive solution.
* **Alarms**: Once you have identified your trends or patterns, it's time to alert on them.

#### Exam Tip: Logs Should Go to CloudWatch Logs

___

* Except for situation where we don't need to process them. Then, they should go straight to `S3`.
* You will need to have a high-level understanding of what services act as a source of `CloudWatch Logs`.

#### Exam tips: CloudWatch Logs

___

* **Go-To-Tool**: Generally, favor CloudWatch Logs, unless the exam asks for a real-time solution.
* **Alarms**: CloudWatch alarms can be used to alert if the filter patterns are found.
* **Agent Based**: The CloudWatch agent must be installed and configured. It is not automatic.
* **SQL**: If the exam mentions SQL, think CloudWatch Logs insights.