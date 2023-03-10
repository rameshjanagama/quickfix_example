# QuickFIX Trading Platform
Basic C++ FIX trading platform using the QuickFIX Engine.

### Motivation
I was recently involved in implementing a [FIX](http://www.fixprotocol.org/) message client.
We are using our own proprietary FIX engine to implement it, but I was urged to have a look
at the QuickFIX Engine. This project is based massively on the example code that comes with
the engine. I just removed support for the various FIX protocol versions and kept only
FIX 5.0 SP2. Also made a few changes/additions to the matching engine to return
a FIX 5.0 SP2 `FIX::ExecutionReport` message with all the required fields.

### Description
The project contains two tasks, *tradeclient* and *ordermatch*. They are both console
based. The first sends orders and the latter stores them and tries to make a match.
On success it sends `FIX::ExecutionReport` messages with the matched trade details.

### Implementation Details
A few implementation details:

* The *ordermatch* task stores the orders in `Order` instances. The `Order` class holds
two `std::multimap` containers, one for *Buy* and one for *Sell* orders.
* For each financial instrument we have a `Market`. The `Market`'s name is based on
the instrument's `FIX::Symbol` tag value.
* Both tasks store their incoming/outgoing FIX messages in plain text files in a
folder named `./store/`.

### Task *tradeclient*
The task displays a command line menu where you can send messages to *ordermatch*.
It also prints out all incoming and outgoing FIX protocol messages.

### Task *ordermatch*
The task is not displaying a command line menu but it supports a few commands.

* `#symbols` - Display all the active `Market` instances of the `OrderMatcher`.
* `#quit` - Disconnect any active connections and shutdown.
* `<string>` - Display all *Bid* and *Ask* orders for the `Market` matching the string.
A `Market`'s name is based on the financial instrument's `FIX::Symbol` tag value.

### Library Requirements
One third party library needed:

* [quickfix](http://www.quickfixengine.org/) - The QuickFIX Engine.

### Quick Start
* Start order match engine - acceptor
```
(base) jramesh1@DESKTOP-FKNTHRU:~/CPP/quickfix_example/ordermatch$  ./run_ordermatch_acceptor.sh
<20230208-18:27:27.663239000, FIXT.1.1:ORDERMATCH->CLIENT1, event>
  (Created session)
<20230208-18:28:00.290875000, GLOBAL, event>
  (Accepted connection from 127.0.0.1 on port 5002)
<20230208-18:28:00.293173000, FIXT.1.1:ORDERMATCH->CLIENT1, incoming>
  (8=FIXT.1.19=7935=A34=149=CLIENT152=20230208-18:28:00.29056=ORDERMATCH98=0108=301137=710=109)
<20230208-18:28:00.295174000, FIXT.1.1:ORDERMATCH->CLIENT1, event>
  (Received logon request)
 ```

* Start trading client - initiator
```
(base) jramesh1@DESKTOP-FKNTHRU:~/CPP/quickfix_example/tradeclient$  ./run_tradeclient_initiator.sh

1) Enter Order
2) Cancel Order
3) Replace Order
4) Market data test
5) Quit
Action:
Logon - FIXT.1.1:CLIENT1->ORDERMATCH
```
