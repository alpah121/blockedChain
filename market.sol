//market.sol
/*
<li>max price of $1,000</li>
<li>min price of $300</li>
<li>affiliates gets paid half of the cost</li>
<li>fully decentralized</li>
<li>keep mapping of products and their details</li>
<li>board of directors approves courses to be sold into marketplace</li>
<li>board of directors gets paid up to $36/hour and .2% of each course that sells</li>
<li>other marketplaces can be made</li>
*/

pragma ^0.4.4;

contract market {
struct Product {
	uint price;
	address vendor;
	string url;
	}
mapping(string=>Product) public products;

function buy(string _product)
	{
	
	}

function addCourse()
	{
	
	}

function voteOnCourse()
	{
	
	}
}