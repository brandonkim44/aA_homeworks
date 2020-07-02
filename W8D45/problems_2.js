let arr = ["Mary", "John", "Henry"];

function titleize(names, callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

function callback(names) {
    names.forEach(name => console.log(name));
};

// titleize(arr, (names) => {
//     names.forEach(name => console.log(name));
// });

// titleize(arr, callback()); // ask why this doesn't work




// elephant

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes phrRRRRRRRRRRR!!!!!!!`)
};

const elly = new Elephant("Elly", 2000, "painting a picture");
elly.trumpet();