window.setTimeout(function () {
    alert('Hammertime!');
}, 5000);

function hammerTime (time) {
    window.setTimeout( function() {
        alert(`${time} is hammertime!`);
    }, 5000);
};

// hammerTime(5);

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits () {

    reader.question('Would you like some tea?', res => {
        first = res;
        console.log(`You replied ${first}`);

        // reader.question('Would you like some biscuits?', res2 => {
        //     second = res2;
        //     console.log(`You replied ${second}`);
        // });

    }

    // const firstRes = 
};