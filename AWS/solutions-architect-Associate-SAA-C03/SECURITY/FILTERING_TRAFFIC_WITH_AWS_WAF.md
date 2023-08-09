#### What is AWS WAF?

___

* AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to Amazon
  CloudFront or an Application Load Balancer.
* AWS WAF also lets you control access to your content.
* You can configure conditions such as what IP addresses are allowed to make this request or what query string
  parameters need to be passed for the request to be allowed.
* The Application Load Balancer or CloudFront will either allow this content to be received or give an HTTP 403 status
  code.
* AWS WAF operates at `Layer 7`

#### AWS WAF ALLOWS: 3 Different Behaviors

___

1. `Allow all requests`: except the ones you specify.
2. `Block all requests`: except the ones you specify.
3. `Count the requests `: that match the properties you specify.

#### Conditions

___

1. `IP Addresses`: that request originate from
2. `Country`: that requests originate from
3. `Values`: in request headers
4. `Presence of SQL code`: that is likely to be malicious (knows as SQL injection)
5. `Presence of a script`: that is likely to be malicious (known as cross-site scripting)
6. `Strings that appear in requests`: either specific strings or strings that match regular expression (regex) patterns.

#### Exam Tip: WAF Operates at Layer 7

___

* In the exam, you will get scenario-based questions asking how to block layer 7 attacks. Always think of WAF whenever
  you hear the term Layer 7. WAF can block Layer 7 DDoS attacks a well as things like SQL injections and cross-site
  scripting.
* If you need to block access to specific countries or IP addresses, you can also achieve this using AWS WAF.