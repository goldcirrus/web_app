/* Author: Liang Zhong; T00224182

*/

/*the below const variables represent/refer to the button elements on the web page. */
const numberButtons    = document.querySelectorAll('[data-number]');       /*get node list objects: number buttons array*/
const operationButtons = document.querySelectorAll('[data-operator]');     /*get node list objects: operation buttons array*/

const equalsButton     = document.querySelector('[data-equals]');
const deleteButton     = document.querySelector('[data-DEL]');
const allClearButton   = document.querySelector('[data-AC]');

const previousDisplayElementWeb = document.querySelector('[data-predisplay]');       /*represent web's previous input operands display */
const currentDisplayElementWeb  = document.querySelector('[data-display]');          /*represent web's current input operands display */
  
/*calculator class definition. 
  a calculator class object can have its own property values that can be calculated by js, and then displayed on web. 
  this Calculator object is linked/refered to web elements by its construcor function's parameters. 
  web-elements are passed into its constructor function as arguments. */
class Calculator {
	/*constructor to link web element to object's property via its parameters.*/
    constructor(previousDisplayElementWeb, currentDisplayElementWeb) {      /*pass in web display elements to this object.*/
       this.previousOperandTextElement = previousDisplayElementWeb;         /*object property assigned/refered to web element's address.  */
       this.currentOperandTextElement = currentDisplayElementWeb;           /*This object property refers to web element. used in display() function below.*/
       this.clear();                                                       /*in the begining: clear all */
    }
	
	clear() {
       this.currentOperand = "";          /*create this calculator object's properties for computing the result. */
       this.previousOperand = "";
       this.operation = "";
    }
	
	deleteOneLetter() {
		this.currentOperand = this.currentOperand.toString().slice(0, -1);  /*use array's slice() function to remove last array element*/
    }

    appendNumber(number) {
		if (number === '.' && this.currentOperand.includes('.')) 
			return;
		else                         /*currentOperand is concanated with passed in argument:number's value.*/
		    this.currentOperand = this.currentOperand.toString() + number.toString();
    }

    chooseOperation(operator) {
		if (this.currentOperand === '') 
			return;
        else if (this.previousOperand !== '') {
            this.compute();
        }
              /*create a local property:operation assigned with argument operator's value*/
        this.operation = operator;
        this.previousOperand = this.currentOperand;
        this.currentOperand = '';
    }

    compute() {
		let result;
        const prev = parseFloat(this.previousOperand);     /*convert string value to float number value for computing.*/
        const current = parseFloat(this.currentOperand);
		
        if (isNaN(prev) || isNaN(current)) 
			return;
		
        switch (this.operation) {
          case '+':
            result = prev + current;
            break;
          case '-':
            result = prev - current;
            break;
          case '*':
            result = prev * current;
            break;
          case '/':
            result = prev / current;
            break;
          default:        		
		    return;
        }
		
        this.currentOperand = result;  /*computed result is assigned to currentOperand, and then displayed at web's current display element. */
        this.operation = "";    /*after computing, the oeration symbol is cleared out.*/
        this.previousOperand = '';   /*after computing, the previousOperand is cleared out. */
    }

    updateDisplay() {    /*these 2 object's properties refer to web display elements. */
		this.currentOperandTextElement.innerText = this.currentOperand;
        this.previousOperandTextElement.innerText = this.previousOperand+this.operation;
    }
	
				
}




/*    create a new calculator object. 
      web display elements are passed in as its arguments,therfore object's properties are referd to web elements. 
      this calculator object now refers to the display elements and button elements on the web page. */
const calculator = new Calculator(previousDisplayElementWeb, currentDisplayElementWeb)

/*The Array.forEach() method calls a function for each element in an array. 
  numberbutton is the current value in numberbuttons array:(nodelist:number button elements on the web).
  numberButtonX variable is the element list on web page. */  
numberButtons.forEach(function(numberButtonX){
                               numberButtonX.addEventListener("click", function() {
                                                   calculator.appendNumber(numberButtonX.innerText);
                                                   calculator.updateDisplay();
                                                    })
                     });
						
/*The Array.forEach() method calls a function for each element in an array. 
  operationbuttonX is the current value in operationButtons array:(nodelist:operator button elements on the web).*/
operationButtons.forEach(function(operationButtonX){
                                  operationButtonX.addEventListener("click", function() {
                                                calculator.chooseOperation(operationButtonX.innerText);
                                                calculator.updateDisplay();
                                                     })
                       });
					   
/*equal button's click event leads to compute the result and display the result. */
equalsButton.addEventListener('click', function() {
                                            calculator.compute();
                                            calculator.updateDisplay();
                            });
					
					
/*allclear button's click event leads to invoke clear function to clear out the object's properties value. */
allClearButton.addEventListener("click", function(){
                                                 calculator.clear();
                                                 calculator.updateDisplay();
                              });

/*delete button's click event leads to invoke delete function */
deleteButton.addEventListener('click', function() {
                                           calculator.deleteOneLetter();
                                           calculator.updateDisplay();
                            });