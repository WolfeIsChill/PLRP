
_item = param [0,false,[false]];

_complete = false;
_price = 1250;




if(_item) then {

	

} else {

	if(karma_level > 0) then {
		_mydiscount = karma_level / 100;
		_discount = 1 - _mydiscount;
		_price = _price * _discount;
		_discountper = _mydiscount * 100;
		[format["You received a %%1 discount due to your reputation level!",_discountper], false] spawn domsg;
	};

	if(cheap_buffs) then { _price = _price * 0.7; cheap_buffs = false; ["You just got 30% off due to a voucher!", false] spawn domsg; };

	if(cash_in_hand < _price) exitWith { ["DONUT GUY: Not enough money, I need $1250 for donuts.", false] spawn domsg;  _complete = true; };

	["cash","take",_price] call life_fnc_handleCash;
};

if(_complete) exitWith {};

["This bronut was heavy on sugar! It appears your aim is easier to control for 90 minutes.", false] spawn domsg;

life_bro = 0;
uiSleep 1;
life_bro = 5400;
player setUnitRecoilCoefficient 1.8;
while{life_bro > 0} do {
	life_bro = life_bro - 1;
	uiSleep 1;
};
["Your bronuts have run out", false] spawn domsg;
player setUnitRecoilCoefficient 2.8;