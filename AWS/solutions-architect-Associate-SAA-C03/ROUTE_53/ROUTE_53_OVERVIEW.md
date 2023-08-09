#### What is DNS?

___

* DNS is used to convert human-friendly domain names (e.g., https://orhasson.xyz) into an Internet Protocol (IP)
  address (e.g., https://82.125.53.1).
* Ip addresses are used by computers to identify each other on the network. IP addresses commonly com in 2 different
  forms: IPv4 and IPv6.
* Computers use DNS to convert domain names into IP addresses.

#### IPv4 vs. IPv6:

___

1. **IPv4**: The IPv4 space is a **32-bit** field and has over 4 billion different addresses.
2. **IPv6**: IPv6 was created to solve this depletion issue and has an address space of **128 bits**.
3. **IPv6 Addresses**: In theory, there are 320 undecillion addresses.

#### Exam Tip: Top-Level Domain

___

* If we look at common domain names (e.g., google.com, bbc.co.uk and ynet.co.il), you will notice a string of characters
  separated by dots (periods).
* The last word in a domain name represents the top-level domain. The second word in a domain name is known as a
  second-level domain name (this is optional, though and depends on the domain name).

#### Top-Level Domains

___

* These top-level domain names are controlled by the Internet Assigned Numbers Authority (IANA) in a root zone database,
  which is essentially a database of all available top-level domains.

#### Domain Registrars

___

* Because all names in a given domain name must be unique, there needs to be a way to organize this all so that domain
  names aren't duplicated. THis is where domain registrars come in.

#### The SOA record stores information about:

___

* The name of the server that supplied the ata for the zone
* The administrator of the zone
* The current version of the data file
* The default number of seconds for the time-to-live file on resource records

#### What is a TTL?

___

* The length that a DNS record is cached on either the resolving server or the user's own local PC is equal to the value
  of the **time to live (TTL)** in seconds.
* The lower the time to live, the faster changes to DNS records take to propagate throughout the internet.

#### What is a CNAME?

___

* A CNAME (canonical name) can be used to resolve one domain name to another. For example, you may have mobile website
  with the domain name https://m.orhasson.xyz that used for when users brows to your domain name on their mobile
  devices.
* You may also want the name https://mobile.orhasson.xyz to resolve to this same address.

#### Alias Records

___

* Alias records are used to map resource record sets in your hosted zone to load balancers, `CloudFront` distributions,
  or `S3` buckets that are configured as websites.
* Alias records work like a CNAME record in that you can map one DNS name (www.example.com) to another "target" DNS
  name(example1234.elb.amazonaws.com).
* `CNAME` **Cannot** be used for naked domain names (zone apex record). You can't have `CNAME` for http://orhasson.xyz
* `A Record/Alias` **Can** be used for a naked domain name/zone apex record.

#### What is Route 53?

___

* **Route 53 is Amazon's DNS service**. It allows you to register domain names, create hosted zones, and manage and
  create DNS records.
* Route 53 is named after Route 66 (one of the original highways across the United States) but is called 53 because DNS
  operates on port 53.

#### Route 53 - Exam Tips

1. Understand the difference between an alias record and a CNAME.
2. Given the choice, always choose an alias record over a CNAME.

#### Common DNS Record Types: Exam Tips

* SOA Records
* NS Records - used by top-level domain servers to direct traffic to the content DNS server that contains the
  authoritative DNS records.
* CNAME Records
* A Records - The A record is used by a computer to translate the name of the domain to an IP address.