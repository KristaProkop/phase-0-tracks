var colors = ["navy", "cyan", "periwinkle", "cerulean"];
var names = ["Winston", "George", "Frank", "Marshmallow"];

colors.push("azure");
names.push("Zoe");

console.log(colors);
console.log(names);

var horses = {};

for (i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}
console.log(horses)

//____________________________________________________

function Car(make, model, year, isnew) {
	console.log("Car information", this);

	this.make = make;
	this.model = model;
	this.year = year;
	this.isnew = isnew;
	
	this.start = function() { console.log("Vroom!"); };
	
	console.log("Car report complete");
}

console.log("Let's buy a car ...");

var newcar = new Car("Ford", "Escort", 2008, false);
console.log(newcar.year + " " +newcar.make + " " + newcar.model);
console.log("Does this car start?");
newcar.start();

console.log("Let's buy another car ...");

var newcar1 = new Car("Honda", "Odyssey", 2016, true);
console.log(newcar1.year + " " +newcar1.make + " " + newcar1.model);
console.log("Does this car start?");
newcar1.start();

