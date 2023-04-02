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



