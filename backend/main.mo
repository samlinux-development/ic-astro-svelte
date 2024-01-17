
import Text "mo:base/Text";
import Result "mo:base/Result";
import Principal "mo:base/Principal";

import Map "mo:motoko-hash-map/Map";
import { nhash } "mo:motoko-hash-map/Map";

import Glossary "./Glossary";

actor GlossaryService { 
  
  /**
   * The principal identifier of the wallet canister that installed this, used for authorization.
   */
  let adminPrincipal = "yziij-iujbv-ygpuv-q4dzb-aywuv-kz5cw-caeo5-iysan-shdls-nqy5g-aae";

  /**
   * The result type of the service.
   */
  type Result = {
    #ok;
    #err;
  };

  /**
   * The error type of the service.
   */
  type Error = {
    #NotAuthorized;
  };

  /**
   * The entry type of the service.
   */
  type Entry = {
    name: Text;
    desc: Text;
  };

  // The map of entries.
  stable let map = Map.new<Nat, Entry>();

  /**
   * Get the glossary entries.
   */
  public query func get(id : Nat) : async ?Entry {
    return Map.get(map, nhash, id);
  };

  /**
   * Install the glossary entries.
   */
  public shared (msg) func installer() : async  Result.Result<(), Error> {
    let callerId = msg.caller;

    // Reject AnonymousIdentity
    if(Principal.toText(callerId) != adminPrincipal) {
        return #err(#NotAuthorized);
    };

    var key = 1;
    for (entry in Glossary.Glossary.vals()) {
      Map.set(map, nhash, key, entry);
      key += 1;
    };

    return #ok;
  };

};