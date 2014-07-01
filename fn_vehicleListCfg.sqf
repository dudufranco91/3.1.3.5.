#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
	
	Kraken edits: list grouping for easy adding & editing
*/
private["_shop","_return","_civCars","_civShips","_civTrucks","_fedCars"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

//Civilian Lists
		_civCars = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
		
		_civShips = [
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
		
		_civTrucks = [
			["C_Van_01_box_F",60000],
			["C_Van_01_fuel_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["I_Truck_02_box_F",100000],
		//	["I_Truck_02_fuel_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",200000],
 			["O_Truck_03_covered_F",250000],
 			["B_Truck_01_box_F",1350000],
 			["O_Truck_03_device_F",450000]
		];	
		
		_civHelis = [
			["B_Heli_Light_01_F",175000],
			["O_Heli_Light_02_unarmed_F",450000]
		];

	
switch (_shop) do
{
/* --------------------- POLICE --------------------- */
		case "cop_car":
		{
				_return set[count _return,["C_Offroad_01_F",5000]];
			if(__GETC__(life_coplevel) > 1) then
			{
				if(__GETC__(life_donator) > 2) then
					{
						_return set[count _return,["C_Hatchback_01_sport_F",10000]];
					};
				_return set[count _return,["C_SUV_01_F",20000]];
			};
			if(__GETC__(life_coplevel) > 4) then
			{
				_return set[count _return,["B_MRAP_01_F",30000]];
			};	
		
			if(__GETC__(life_coplevel) > 5) then
			{
				_return set[count _return,["I_MRAP_03_F",30000]];
			};
			if(__GETC__(life_donator) > 0) then
		{
			_return set[count _return,
				["C_Kart_01_Blu_F",2500]];
			_return set[count _return,
				["C_Kart_01_Fuel_F",2500]];
				_return set[count _return,
				["C_Kart_01_Red_F",2500]];
					_return set[count _return,
				["C_Kart_01_Vrana_F",2500]];
				};
		};
		case "cop_air": 
		{
			_return set[count _return,
			["B_Heli_Light_01_F",75000]];
			if(__GETC__(life_coplevel) > 3) then
			{
				_return set[count _return,
				["B_Heli_Transport_01_F",200000]];
				
			};
			
			if(__GETC__(life_coplevel) > 7 && __GETC__(life_donator) > 3) then
			{
				_return set[count _return,
				["B_Heli_Attack_01_F",350000]];
			
			};
			if(__GETC__(life_coplevel) > 7 && __GETC__(life_donator) > 4) then
			{
				_return set[count _return,
				["O_Heli_Attack_02_black_F",600000]];
			
			};
			if(__GETC__(life_adminlevel) == 3) then {
				_return set[count _return,["I_Heli_Transport_02_F",0]]; 			
			};
		
		};
			case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000]
		];
	};
	
	
	
	
		case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",100],
			["C_Offroad_01_F",1500],
			["C_SUV_01_F",20000],
			["I_Truck_02_box_F",75000]
		];
		if(__GETC__(life_donator) > 0) then
		{
			_return set[count _return,
				["C_Kart_01_Blu_F",2500]];
			_return set[count _return,
				["C_Kart_01_Fuel_F",2500]];
				_return set[count _return,
				["C_Kart_01_Red_F",2500]];
					_return set[count _return,
				["C_Kart_01_Vrana_F",2500]];
				};
		if(__GETC__(life_donator) > 1) then
		{

		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["C_Van_01_Fuel_F",30000]]; 
				_return set[count _return,["O_Truck_03_transport_F",175000]]; 
				_return set[count _return,["O_Truck_03_transport_F",200000]]; 

		};
			if(__GETC__(life_donator) > 3) then
		{
			_return set[count _return,["B_Truck_01_box_F",175000]];
			_return set[count _return,["B_Truck_01_fuel_F",175000]];
		};
			if(__GETC__(life_donator) > 4) then
		{
				_return =
				[
					["B_Quadbike_01_F",0],
					["C_Offroad_01_F",1500],
					["C_SUV_01_F",10000],
					["I_Truck_02_box_F",55000],
					["C_Hatchback_01_sport_F",7000],
					["C_Van_01_Fuel_F",10000],
					["B_Truck_01_box_F",125000],
					["B_Truck_01_fuel_F",125000],
						["O_Truck_03_transport_F",100000],
 			["O_Truck_03_covered_F",150000],
 		 			["O_Truck_03_device_F",250000]
				];
				
				_return set[count _return,
				["C_Kart_01_Blu_F",2500]];
			_return set[count _return,
				["C_Kart_01_Fuel_F",2500]];
				_return set[count _return,
				["C_Kart_01_Red_F",2500]];
					_return set[count _return,
				["C_Kart_01_Vrana_F",2500]];
		};
		
			

	};
	case "donator_air":
	{
		_return = [["B_Heli_Light_01_F",125000]];
			if(__GETC__(life_donator) > 2) then
		{
			_return = [["B_Heli_Light_01_F",105000]];
		};
			if(__GETC__(life_donator) > 3) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",275000]];
		
		};
			if(__GETC__(life_donator) > 4) then
		{
				_return set[count _return,["I_Heli_Transport_02_F",450000]]; 
		};
		
			

	};
	
			
	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};
	
	case "civ_truck":
	{
		_return = _civTrucks;
	};

	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",13000]
		];
			_return set[count _return,
		["C_Offroad_01_F",9000]];
		_return set[count _return,
		["O_MRAP_02_F",150000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",650000]];

		if(__GETC__(life_donator) > 0) then
		{
			_return set[count _return,
				["C_Kart_01_Blu_F",2500]];
			_return set[count _return,
				["C_Kart_01_Fuel_F",2500]];
				_return set[count _return,
				["C_Kart_01_Red_F",2500]];
					_return set[count _return,
				["C_Kart_01_Vrana_F",2500]];
				};
	};
	
	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",253000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",350000]];
			if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["B_Heli_Light_01_F",175000]];
		};
			if(__GETC__(life_donator) > 3) then
		{
			_return set[count _return,["O_Heli_Light_02_unarmed_F",275000]];
		
		};
			if(__GETC__(life_donator) > 4) then
		{
				_return set[count _return,["I_Heli_Transport_02_F",650000]]; 
		};
		
	};
	
		case "swat_car":
	{
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
			if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,
				["B_MRAP_01_hmg_F",750000]];
				};
	};
	
		case "swat_air":
	{
		_return set[count _return,
		["I_Heli_light_03_unarmed_F",0]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",0]];
		};
	};
	
	case "swat_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",0],
			["C_Boat_Civil_01_police_F",0],
			["B_SDV_01_F",0]
		];
	};
	
	
	case "fed_car":
	{
	if(__GETC__(life_adminlevel) > 0) then {
		_return = 
		[
				["B_Quadbike_01_F",0],
				["C_Offroad_01_F",0],
				["C_Hatchback_01_F",0],
				["C_Hatchback_01_sport_F",0],
				["C_SUV_01_F",0],
				["B_MRAP_01_F",0],
				["B_MRAP_01_F",0],
				["I_MRAP_03_F",0],
				["I_Truck_02_covered_F",0],
				["I_Truck_02_transport_F",0],
				["B_Truck_01_covered_F",0],
				["B_Truck_01_transport_F",0],
				["B_Truck_01_box_F",0],
				["O_Truck_03_device_F",0],
				["O_Truck_03_repair_F",0],
				["C_Van_01_box_F",0]				
		];
			_return set[count _return,["B_Truck_01_fuel_F",0]];
			_return set[count _return,
		["O_MRAP_02_F",0]];
		};
		
	};
	
	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};
	
	case "civ_air":
	{
		_return = _civHelis;
	};

	case "civ_ship":
	{
		_return = _civShips;
		
	};
case "civ_car":
	{
		_return = _civCars;
		
	};

	
	/* MEDICAL */
	case "med_car":
	{
		_return =
		[
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",16000]
		];
	};
	
	case "med_air":
	{
		_return =
		[
			["O_Heli_Light_02_unarmed_F",30000]				
		];		
	};
	
	case "med_ship":
		{
			_return =
			[
				["B_Lifeboat",5000],
				["C_Boat_Civil_01_rescue_F",20000]				
			];				
		};

	case "civ_kart":
		{
			_return set[count _return,
				["C_Kart_01_Blu_F",2500]];
			_return set[count _return,
				["C_Kart_01_Fuel_F",2500]];
				_return set[count _return,
				["C_Kart_01_Red_F",2500]];
					_return set[count _return,
				["C_Kart_01_Vrana_F",2500]];
		};
	
};

_return;
