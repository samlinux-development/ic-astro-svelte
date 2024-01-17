  module {

    public let Glossary =[
      {
        name="account"; 
        desc="A ledger account is a set of entries in the ledger canister, which is a smart contract that mimics the guise and behavior of a regular banking account, whose unit of measure is ICP (Internet Computer Protocol) utility tokens. Ledger accounts are owned by principals, and their ownerships do not change over time. Every account on the ledger has a positive balance measured in ICP with a precision of eight decimals."
        },
      {
        name="address"; 
        desc="In the context of transactions on the ledger, address is synonymous with account."
        },
      {
        name="actor";
        desc="An actor is a primitive in the actor model. It is a process with encapsulated state that communicates with other concurrently running actors through asynchronous messages that are received sequentially. The actor model is relevant to the ICP because canisters on ICP (a type of smart contract) follow the actor model for concurrent and asynchronous computation."
      },
      {
        name="balance";
        desc="The balance of an account on the ledger is the sum of all deposits minus the sum of all withdrawals. As a degenerate case, it is sometimes useful to say that an account which is not present in the ledger has a balance of zero. The balance of a ledger account is denominated in ICP and is represented with eight decimals. Thus, the minimum positive balance of an account is 0.00000001 or 10^-8 ICP; this amount is sometimes referred to as one e8."
      },
      {
        name="beneficiary";
        desc="The beneficiary of an account is the principal who owns the balance of the account. The beneficiary of an account cannot be changed. The beneficiary of an account may or may not be allowed to make transactions on the account (see fiduciary)."
      },
      {
        name="blockchain";
        desc="A blockchain is a growing list of cryptographically linked blocks, agreed upon by consensus. On the Internet Computer, every subnet maintains its own blockchain with blocks containing messages for the canisters hosted on this subnet. These blockchains interact using chain key cryptography."
      },
      {
        name="boundary nodes";
        desc="Boundary nodes are gateways to the Internet Computer. These nodes allow users to seamlessly access the canisters smart contracts running on ICP. The boundary nodes have several purposes: they aid in discover-ability (the icp0.io domain name points to a set of boundary nodes), they are geo-aware and can route incoming requests to the nearest subnet node that hosts the canister involved, they can help load balance query transactions, they can cache cryptographically verified data in the role of a content distribution network, they can throttle excessive interactions from an outside IP address, bootstrapping/installing the service worker, and they can help protect subnets from DDoS attacks."
      },

      {
        name="burning transaction";
        desc="A burning transaction is the process of burning ICP, whereby a certain amount of ICP are destroyed. The main use case is that of purchasing cycles, through which ICP are destroyed while at the same time a corresponding amount of cycles is created, using the current exchange rate between ICP and (XDR), in such a way that one XDR corresponds to one trillion (10E12) cycles. It is represented as a transaction from the source account to the ICP supply account."
      },

      // feel free to add more terms here

      


    ];
}