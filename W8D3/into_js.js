function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() { //creates error, "x" already declared as constant variable
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() { //creates error, because "x" has already been declared in the block on line 38
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}

function madLib(verb, adjective, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.` ) //uses backticks (~ key)
}

function isSubstring(searchString, subString) {
    return searchString.includes(subString)
}

function fizzBuzz(array) {
    const new_array = [];
    for (let i = 0; i < array.length; i++) {
        if (((array[i]%3 === 0) && (array[i]%5 !== 0)) || ((array[i]%3 !== 0) && (array[i]%5 === 0))) {
            new_array.push(array[i]);
        }
    }
    return new_array;
}

function isPrime(number) {
    if (number < 2) { return false; }

    for (let i = 2; i < number; i++) {
        if (number % i === 0 ) {
            return false;
        }
    }
    return true;
}

function sumOfNPrimes(n) {
    let sum = 0;
    let prime_count = 0;
    let i = 2;

    while (prime_count < n) {
        if (isPrime(i)) {
            prime_count++;
            sum += i;
        }
        i++;
    }
    return sum;
}