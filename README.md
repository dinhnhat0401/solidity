# solidity

### SOlidity with remix

Solidity code file construct:

```
prgma solidity version;
solidity need ; at the end.
contract - similar to class

syntax: type access-modifier variable-name = value;

function syntax:

function name() modifier view-or-none returns(type) {
}

    People[] public people;
    for list -> similar to java
    

```

solidity variable type: boolean, uint, int, address, bytes, string
https://docs.soliditylang.org/en/v0.8.17/types.html#string-literals-and-types

https://university.alchemy.com/overview/ethereum


modifier:
public will create a getter to value.
private won't allow that

public, internal, private

the more stuff, the more gas is needed

public is global scope
variable scope similar with java / js

a view function disallow modification of states. 
view function doesn't cost gas to execute.
        // retrieve() call view function inside this non-view will case this to consume more gas.

### EVM Overview

Calldata, memory, storage

calldata: temporary immuatable data type,
memory: temporary variable can be modify
storage: permanent var, can be modified

struct, map need to have calldata or memory

single file can have muultiple contracts

import another contract
import "./SimpleStorage.sol";

### Inheritance/override

Contract2 is Contract1 : inheritance
function needs to have virtual keyword to be overridable

wallets & contracts can hold fund

reverting: undo action & send remaining gas back.

### Send money from smartcontract

- transfer
payable(msg.sender).transfer(adderss(this).balance)
- Send
bool sendSuccess = payable(msg.sender).send(address(this).balance);
require(sendSuccess, "Send failed")
- call
lower level command. call virtually any functions.
(bool callSuccess, bytes memory  dataReturned) = payable(msg.sender).call{value: address(this).balance}("")

- gas optimize

constant, immutable

or customized error

Enums
Events
Try/Catch
Fucntion selector
abi.encode / decode
hasing
Yul / assembly
