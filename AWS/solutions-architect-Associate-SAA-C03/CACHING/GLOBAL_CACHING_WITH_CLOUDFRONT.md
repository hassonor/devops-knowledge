#### What is CloudFront?

___
CloudFront is a fast content delivery network (`CDN`) service that securely delivers data, videos, applications and APIs
to customers globally. It helps `reduce` latency and provide higher transfer speeds using AWS `edge locations`.

#### Important CloudFront Settings

___

* `Security`: Defaults to HTTPS connections with the ability to add custom SSL certificate
* `Global Distribution`: You can't pick specific countries - just general areas of the globe
* `Endpoint Support`: Can be used to from AWS endpoints along with non-AWS applications
* `Expiring Content`: You can force an expiration of content from the cache if you can't wait fot the TTL

#### Exam Tip: CloudFront Fixed All Connection Issues

___

* While the real world is much more nuanced, on the
  exam `every sort of external customer performance issue can be solved` by putting CloudFront in from of your
  application.
* Slow connectivity from across the globe? Images or videos aren't loading fast enough? `CloudFront to the rescue`.

#### Exam Tips: CloudFront

___

* `Speedy`: CloudFront's main purpose is to cache content at the edge location to speed up delivery of data.
* `Blocking Connections`: It can be used to block individual countries, but WAF is a better tool for it.
* `On-Site Support`: This CDN works for both AWS and on-site architecture.
* `All the Locations`: You cannot pick specific edge locations for your distributions.