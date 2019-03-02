
browser
ballot.sol
ballot_test.sol
ssj.sol
config
browser/ssj.sol

0

[2] only remix transactions, script
Search transactions
remix.getFile(path): Returns the content of the file located at the given path

remix.setFile(path, content): set the content of the file located at the given path

remix.debug(hash): Start debugging a transaction.

remix.loadgist(id): Load a gist in the file explorer.

remix.loadurl(url): Load the given url in the file explorer. The url can be of type github, swarm, ipfs or raw http

remix.setproviderurl(url): Change the current provider to Web3 provider and set the url endpoint.

remix.execute(filepath): Run the script specified by file path. If filepath is empty, script currently displayed in the editor is executed.

remix.exeCurrent(): Run the script currently displayed in the editor

remix.help(): Display this help message

remix.debugHelp(): Display help message for debugging

 - Welcome to Remix v0.7.5 - 

You can use this terminal for: 
Checking transactions details and start debugging.
Running JavaScript scripts. The following libraries are accessible:
                      
web3 version 1.0.0
ethers.js
swarmgw
compilers - contains currently loaded compiler
Executing common command to interact with the Remix interface (see list of commands above). Note that these commands can also be included and run from a JavaScript script.
Use exports/.register(key, obj)/.remove(key)/.clear() to register and reuse object across script executions.
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...d0029logs:0hash:0xb22...ce108
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...70029logs:0hash:0x064...18239
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...e0029logs:0hash:0xe25...33a21
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
call to example.owner
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.owner()data:0x8da...5cb5b
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...00000logs:0hash:0xce9...fcf3f
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...00000logs:0hash:0x553...c66d6
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...00000logs:0hash:0x093...2c8ec
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...00000logs:0hash:0x543...af8ab
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
call to example.owner
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.owner()data:0x8da...5cb5b
Debug
transact to example.changeMeassage pending ... 
[vm]from:0x583...40225to:example.changeMeassage(string) 0xdc0...46222value:0 weidata:0xfcb...00000logs:0hash:0xb81...21103
Debug
transact to example.changeMeassage errored: VM error: revert.
revert	The transaction has been reverted to the initial state.
Note: The constructor should be payable if you send value.	Debug the transaction to get more information. 
transact to example.changeMeassage pending ... 
[vm]from:0x583...40225to:example.changeMeassage(string) 0xdc0...46222value:0 weidata:0xfcb...00000logs:0hash:0x330...1f6c2
Debug
transact to example.changeMeassage errored: VM error: revert.
revert	The transaction has been reverted to the initial state.
Note: The constructor should be payable if you send value.	Debug the transaction to get more information. 
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
transact to example.changeMeassage pending ... 
[vm]from:0xca3...a733cto:example.changeMeassage(string) 0xdc0...46222value:0 weidata:0xfcb...00000logs:0hash:0x325...3c6da
Debug
call to example.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example.message()data:0xe21...f37ce
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0x555...f0e03
Debug
call to example1.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.message()data:0xe21...f37ce
Debug
call to example1.owner
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.owner()data:0x8da...5cb5b
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...30029logs:0hash:0xabf...988a2
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0xd29...c916a
Debug
call to example1.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.message()data:0xe21...f37ce
Debug
creation of example pending...
[vm]from:0xca3...a733cto:example.(constructor)value:0 weidata:0x608...a0029logs:0hash:0xfb3...33170
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0x16d...d3059
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0x625...05f55
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0xf67...0dbad
Debug
call to example1.message
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.message()data:0xe21...f37ce
Debug
call to example1.owner
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.owner()data:0x8da...5cb5b
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0xf30...f6699
Debug
creation of example1 pending...
[vm]from:0xca3...a733cto:example1.(constructor)value:0 weidata:0x608...00000logs:0hash:0xd1e...a411b
Debug
transact to example1.record pending ... 
[vm]from:0xca3...a733cto:example1.record(string,string,uint256) 0x860...24b9bvalue:0 weidata:0xa62...00000logs:0hash:0x5e4...df91c
Debug
transact to example1.record pending ... 
[vm]from:0xca3...a733cto:example1.record(string,string,uint256) 0x860...24b9bvalue:0 weidata:0xa62...00000logs:0hash:0x10a...0c529
Debug
call to example1.getRecord
CALL
[call]from:0xca35b7d915458ef540ade6068dfe2f44e8fa733cto:example1.getRecord()data:0xf18...ad6fb
Debug
>
Compile
Run
Analysis
Testing
Debugger
Settings
Support
Environment
VM (-)
Account 

Gas limit
3000000
Value
0


Deploy
_message: 
vansh
transact
or
At Address
Load contract from Address
Transactions recorded:
3
Deployed Contracts
example1 at 0x860...24b9b (memory)
changeMeassage
string _message
record
_fname: 
vansh
_lname: 
tah
_mobile_no: 
7000182269
transact
getRecord
0: string: vansh
1: string: tah
2: uint256: 7000182269
3: uint256: 0
message
owner
