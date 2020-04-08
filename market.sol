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
uint fee = 0.035;
address owner;
struct Product {
	uint price;
	address vendor;
	string url;
	}

event Purchase(
	address _buyer,
	string indexed _product
);
mapping(string=>Product) public products;
uint totalInAccount;

function buy(string _product, address affiliate)
	{
	require(products[_product].price != 0);
	require(products[_product].price == msg.value);
	if (products[_product].vendor == affiliate)
		{
		products[_product].vendor.transfer(msg.value * (1 - fee));
		}
	else 
		{
		products[_product].vendor.transfer(msg.value * (0.5 - fee));
		affiliate.transfer(msg.value * 0.5);
		}
	totalInAccount += msg.value * fee;
	emit Purchase(msg.sender, _product);
	}

event Record(
	address indexed _to,
	string _product,
	string _message
);

function recordShard(address _to, string _product, string _message) public
	{
	address sender = msg.sender;
	emit Record(_to, _product, _message);
	sender.transfer((products[_product].price * fee)/12);
	}

function addCourse(string _title,uint _price,address _vendor,string _url) public
	{
	require(msg.sender == owner);
	require(products[_title].price == 0);
	require(_price >= 0.5 && _price <= 10);
	products[_title] = Product(_price, _vendor, _url);
	}

}
