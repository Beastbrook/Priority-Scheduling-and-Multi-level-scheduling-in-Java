Readme.txt
Nachos-Operating-System-Project

What is Nachos? An instructional operating system simulator that is written in Java at UC Berkeley and it is based on earlier C++ versions. It implements many aspects of a real OS, threads, processes, timers, interrupts, scheduling, memory management and simulates hardware. It is a MIPS-based CPU, it can load and execute MIPS binaries as user processes.

Project 1 Description: We created different schedulers implementing various scheduling policies. Specifically, we implemented Priority Scheduling and Multi-level scheduling by extending the Nachos thread scheduling package as described in the Project folder.

Project 2 Description: For this assignment, we modified the current mutex lock implementation to use a different scheduling policy for lock acquisition than for CPU scheduling. We also modified the CPU scheduling policy to implement static priority scheduling with priority donation and used a FCFS lock scheduling and static priority thread scheduling with priority donation t demostrate the working locks.

Project 3 Description: To reinforce our understanding of virtual memory techniques, we extended the Nachos virtual memory implementation to allow concurrent execution of multiple user programs. We also used the implementation to experimentally demonstrate the effects of page size on performance. This part required us to read user programs that were not previously explored, to implement our changes, to test them and to conduct experiments to analyze performance.

Project 1
To compile the files, use the make command in the Nachos-Java directory.
(e.g. cd Nachos-Java; make) 

There are tests provided in Nachos-Java/nachos/threads/test These are:
    SPT1.java 
    SPT2.java 
    SPT3.java 
    DPT1.java
    DPT2.java
    MLT1.java
    
The prefix (one of SP, DP, or ML) denotes which scheduler they test. To run the
tests, configuration files are provided in Nachos-Java/conf/PA1. Simply invoke
nachos giving it the name of the configuration file for the test you want to run
(there is one for each and the names correspond to the test being run).
Currently, the statistics are logged to Nachos-Java/SPLog.txt
Nachos-Java/DPLog.txt and Nachos-Java/MLLog.txt respectively.

One useful test is compare.bash in Nachos-Java. Since test one for all
schedulers is the same, compare.bash runs it with each scheduler and prints only
the system level statistics for each as a comparison. To run it simply type
./compare.bash (Note the script uses nachos/bin/nachos to invoke the machine so
your path must be set correctly)

A sample output gives us:
    StaticPriorityScheduler: System,15,21,23,27
    DynamicPriorityScheduler: System,15,30,32,39
    MultiLevelScheduler: System,15,43,47,58
This makes sense because with a pure priority based system, threads with higher
priority don't need to wait very long and so also have a low turnaraound time.
As we introduce aging, even high priority threads must sometimes wait on lower
priorities because they have aged enough to get scheduled which increases the
average waiting time. Finally, with multi level scheduling, all threads in a
given priority range are scheduled in round robin causing even more waiting
since everyone gets thier turn. However, the benefit would be a reduction in
response time.

Added configuration parameters:
    scheduler.maxPriorityValue
    scheduler.agingTime
    statistics.logFile
    KThread.Tester

The first 3 are from the description for the assignment and function as
specified. The last one is one we added to tell nachos which test to run from
the Nachos-Java/nachos/threads/test directory. If this is not specified, then no
test will be run.
