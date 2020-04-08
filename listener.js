/*
---FEATURES---
-listens to marketplace events(loop of every 3 seconds)
-holds onto a piece of a key mixed in with eleven random numbers
-gets paid for giving out key piece
-updates stats in stats file and daily log
*/

var web3 = require('web3');
var KeyArray = []

