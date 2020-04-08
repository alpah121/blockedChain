/*
---FEATURES---
-listens to marketplace events(loop of every 3 seconds)
-holds onto a piece of a key mixed in with eleven random numbers
-gets paid for giving out key piece
-updates stats in stats file and daily log
*/

var web3 = require('web3');
var fs = require('fs');
var contracts = {
	"market" : {"abi" : "", "address" : "", get contract() {return new web3.eth.Contract(this.abi, this.address);}}
	"govenor" : {"abi" : "", "address" : "", get contract() {return new web3.eth.Contract(this.abi, this.address);}}
	};


//setup mode

//check whether or not this node is registered
var market = contracts.market.contract();
market.methods.register().call((error, result) => {console.log(result);});

//write to keys file the keys we receive

//switch over to listener mode

//listener mode



