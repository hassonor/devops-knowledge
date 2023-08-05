#### What is AWS Certificate Manager?

___

* AWS Certificate Manager allows you to create, manage and deploy public and private SSL certificates for use with other
  AWS services.
* It integrates with other services - such as Elastic Load Balancing, CloudFront distributions and API Gateway -
  allowing you to easily manage and deploy SSL certificates in your AWS environment.

#### Benefits of AWS Certificate Manager

___

1. `Cost`: No more paying for SSL certificates! AWS Certificate Manager provisions both public and private certificates
   for free. You will still pay for the resource that utilize your certificates (such Elastic Load Balancing).
2. `Automated Renewals and Deployment`: Certificate Manager can automate the renewal of your SSl certificate and then
   automatically update the new certificate with ACM-integrated services, such as Elastic Load Balancing, CloudFrond and
   API Gateway.
3. `Easier to Set Up`: Removes a lot of the manual process, such as generating a key pair of creating a certificate
   signing request (CSR). You can your own SSL certificate with just a few clicks in the AWS Management Console.

#### Exam Tips: AWS Certificate Manager

___

* `Know What It Is`: In the exam, you will get scenario-based questions around SSL certificates and what services you
  should use to integrate SSL certificates.
* `Supported Services`: AWS Certificate Manager integrates with Elastic Load Balancing, CloudFront and API Gateway.
* `Benefits`: AWS Certificate Manager is a free service that saves time and money. Automatically renew your SSL
  certificates and rotate the old certificates with new certificates with supported AWS services.