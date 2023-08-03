#### What Is a DDoS Attack?

___

* A Distributed Denial of Service (DDoS) attack is an attack that attempts to make your website or application
  unavailable
  to your end users.
* This can be achieved by multiple mechanisms, such as large packet floods, by using a combination of reflection and
  amplification techniques, or by using large botnets.

#### What Is a Layer 4 DDoS Attack?

___

* A Layer 4 DDoS attack is often referred to as a `SYN flood`. It works at the transport layer (TCP).
* To establish a TCP connection a 3-way handshake takes place. The client sends a SYN packet to a server, the server
  replies with a SYN-ACK, and the client then responds to that with an ACK.

#### What Should Happen?

___

* After the `3-way handshake` is complete, the TCP connection is established. After these applications begin sending
  data using Layer 7 (application layer protocol), such as HTTP etc.

#### SYN Floods

___

* A SYN flood uses the built-in patience of the TCP stack to overwhelm a server by sending a large number of SYN packets
  and then ignoring the SYN-ACKs returned by the server.
* This causes the server to use up resources waiting for a set amount of time for the anticipated ACK that should come
  from legitimate client.

#### What Can Happen?

___

* There are only so many concurrent TCP connections that a web or application server can have open, so if an attacker
  sends enough SYN packets to a server, it can easily eat through the allowed number of TCP connections.
* This then prevents legitimate requests from being answered by the server.

#### What is Amplification Attack?

___

* Amplification/reflection attacks can include things such as NTP, SSDP, DNS, CharGEN, SNMP attacks, etc.
* This is where an attacker may send a third-party server (such as an NTP server) a request using a spoofed IP address.

#### Amplification Attacks

___

* That server will then respond to that request with a greater payload than the initial request (usually within the
  region of 28-54 times larger that the request) to the spoofed IP address.
* This means that if the attacker sends a packet with a spoofed Ip address of 64 bytes, the NTP server would respond
  with up to 4,556 bytes of traffic.
* Attackers can coordinate this and use multiple NTP servers a second to send legitimate NTp traffic to the target.

#### What is Layer 7 Attack?

___

* A Layer 7 attack occurs where a web server receives a flood of GET or POST requests, usually from a botnet or
  a `large number of compromised computers`.

#### 3 DDoS Exam Tips

___

1. A Distributed Denial of Service (DDoS) attack attempts to make your website or application unavailable to your end
   users.
2. Common DDoS attacks include Layer 4 attacks such as SYN floods or NTP amplification attacks.
3. Common Layer 7 attacks include floods of GET/POST requests.