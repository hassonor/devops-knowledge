### Networking with EC2

You can attach 3 different types of **virtual networking cards** to your EC2 instances:

1. **ENI - Elastic Network Interface** - For basic, day-to-day networking
    * _An ENI is simply a virtual network card that allows:_
        * Private IPv4 Addresses
        * Public IPv4 Address
        * Many IPv6 Addresses
        * MAC Address
        * 1 or More Security Groups
    * _Common ENI Use Cases:_
        * Create a management network.
        * Use network and security appliances in your VPC.
        * Create dual-homed instances with workloads/roles on distinct subnets.
    * Create a low-budget, high-availability solution.
2. **EN - Enhanced Networking** - Uses single root I/O virtualization (SR-IOV) to provide high performance
    * _For High-Performance Networking between 10 Gbps - 100 Gbps_:
        * **Single Root I/O Virtualization (SR-IOV)**
            * SR-IOV provides higher I/O performance and lower CPU utilization
        * **PERFORMANCE**
            * Provides higher bandwidth, higher packet per second (PPS) performance, and consistently lower
              inter-instance latencies.
3. **EFA - Elastic Fabric Adapter** - Accelerates High Performance Computing (HPC) and machine learning applications
    * _What is an EFA (Elastic Fabric Adapter)?_
        * A network device you can attach to your Amazon EC2 instance to accelerate High Performance Computing (HPC) and
          machine learning applications.
        * Provides lower and more consistent latency and higher throughput than the TCP transport traditionally used in
          cloud-based HPC systems.
        * EFA CAN USE OS-BYPASS: It makes it a lot **faster** with much **lower latency**.
            * OS-bypass enables HPC and machine learning applications to bypass the operating system kernel and
              communicate directly with the EFA device.

### Exam Tip: In any scenario in a manner of Enhanced networking question: Choose ENA  (Elastic Network Adapter) over VF (Intel 82599 Virtual Function Interface).

### Exam Tips: For different scenarios on the exam, choose the correct networking device:

1. **ENI**: For basic networking. Perhaps you need a separate management network from your production network or a
   separate logging network, and you need to do this at a low cost. In this scenario , use multiple ENIs for each
   network.
2. **Enhanced Networking**: For when you need speeds between 10 Gbps and 100 Gbps. Anywhere you need reliable, high
   throughput.
3. **EFA**: For when you need to accelerate High Performance Computing (HPC) and machine learning applications or if you
   need to do an OS-bypass. If you see a scenario question mentioning HPC or ML and asking what network adapter you
   want, choose EFA.