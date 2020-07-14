import React from "react";

class Calculator extends React.Component {
    constructor(props) {
        super(props);
        this.state = { num1: "", num2: "", result: 0};
        this.setNum1 = this.setNum1.bind(this);
        this.setNum2 = this.setNum2.bind(this);
        //operations
        this.add = this.add.bind(this);
        this.subtract = this.subtract.bind(this);
        this.multiply = this.multiply.bind(this);
        this.divide = this.divide.bind(this);

        this.clear = this.clear.bind(this);
    }

    setNum1(e) {
        const num1 = e.target.value ? parseInt(e.target.value) : "";
        this.setState({ num1 });
    }

    setNum2(e) {
        const num2 = e.target.value ? parseInt(e.target.value) : ""; //does a number already exist? if so, then parse it and assign to num2, else leave it empty
        this.setState({ num2 }); // same as num2: num2
    }

    add(e) { //have to prevent default because it's a button that sends a request
        e.preventDefault();
        const result = this.state.num1 + this.state.num2;
        this.setState({ result });
    }

    subtract(e) {
        e.preventDefault();
        const result = this.state.num1 - this.state.num2;
        this.setState({ result });
    }

    multiply(e) {
        e.preventDefault();
        const result = this.state.num1 * this.state.num2;
        this.setState({ result });
    }

    divide(e) {
        e.preventDefault();
        const result = this.state.num1 / this.state.num2;
        this.setState({ result });
    }

    clear(e) {
        e.preventDefault();
        const num1 = "";
        const num2 = "";
        const result = 0;
        this.setState( { num1, num2, result });
    }

    render() {
        const { num1, num2, result } = this.state; //object destructuring so we get values for these
        return (
            // dont need to close input tag
            <div>
                <h1>{result}</h1>
                <input onChange={this.setNum1} value={num1}/> 
                <input onChange={this.setNum2} value={num2} />

                <button onClick={this.clear}>Clear</button>
                <br />
                <button onClick={this.add}>+</button>
                <button onClick={this.subtract}>-</button>
                <button onClick={this.multiply}>*</button>
                <button onClick={this.divide}>/</button>
            </div>
        ); //onChange is event listener and then it passes the prop into component
    }
}

export default Calculator;