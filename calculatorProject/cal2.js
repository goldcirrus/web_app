/* Author: Liang Zhong

*/


const numberButtons    = document.querySelectorAll('[data-number]')
const operationButtons = document.querySelectorAll('[data-operation]')
const equalsButton     = document.querySelector('[data-equals]')
const deleteButton     = document.querySelector('[data-delete]')
const allClearButton   = document.querySelector('[data-all-clear]')

const previousOperandTextElement = document.querySelector('[data-previous-operand]')
const currentOperandTextElement  = document.querySelector('[data-current-operand]')
  
/*calculator class definition.*/
class Calculator {
    constructor(previousOperandTextElement, currentOperandTextElement) {   
       this.previousOperandTextElement = previousOperandTextElement;
       this.currentOperandTextElement = currentOperandTextElement;
       this.clear();                            /*create currentOperand, previousOperand, and operateion porperties. */
    }
	
	clear() {
       this.currentOperand = "";
       this.previousOperand = "";
       this.operation = undefined;
    }
	
	delete() {
		this.currentOperand = this.currentOperand.toString().slice(0, -1);
    }

    appendNumber(number) {
		if (number === '.' && this.currentOperand.includes('.')) 
			return;
		else
		    this.currentOperand = this.currentOperand.toString() + number.toString();
    }

    chooseOperation(operation) {
		if (this.currentOperand === '') 
			return;
        else if (this.previousOperand !== '') {
            this.compute();
        }
        this.operation = operation;
        this.previousOperand = this.currentOperand;
        this.currentOperand = '';
    }

    compute() {
		let computation;
        const prev = parseFloat(this.previousOperand)
        const current = parseFloat(this.currentOperand)
        if (isNaN(prev) || isNaN(current)) 
			return
        switch (this.operation) {
          case '+':
            computation = prev + current;
            break
          case '-':
            computation = prev - current;
            break
          case '*':
            computation = prev * current;
            break
          case '?':
            computation = prev / current;
            break
          default:        		
		    return;
        }
		
        this.currentOperand = computation;
        this.operation = undefined;
        this.previousOperand = '';
    }

    updateDisplay() {
		this.currentOperandTextElement.innerText = this.currentOperand;
    }
	
				
    			

	
}

/*    create a new calculator object. 
      web elements are passed in as its arguments. 
      this calculator object now refers to the elements on the web page. */

const calculator = new Calculator(previousOperandTextElement, currentOperandTextElement)

/*The Array.forEach() method calls a function for each element in an array. 
  button is the current value in numberbuttons array:(number button elements on the web).*/
  
numberButtons.forEach(function(button){
                              button.addEventListener("click", function() {
                                           calculator.appendNumber(button.innerText);
                                           calculator.updateDisplay();
                                                    })
                     });
						
/*The Array.forEach() method calls a function for each element in an array. 
  button is the current value in operationButtons array:(operator button elements on the web).*/
operationButtons.forEach(function(button){
                               button.addEventListener("click", function() {
                                           calculator.chooseOperation(button.innerText);
                                           calculator.updateDisplay();
                                                     })
                       });
					   
/*equal button's click event leads to compute the result and display the result. */
equalsButton.addEventListener('click', function(button) {
                                            calculator.compute();
                                            calculator.updateDisplay();
                            });
					
					
/*allclear button's click event leads to invoke clear function to clear out the object's properties value. */
allClearButton.addEventListener("click", function(button){
                                                 calculator.clear();
                                                 calculator.updateDisplay();
                              });

/*delete button's click event leads to invoke delete function */
deleteButton.addEventListener('click', function(button) {
                                           calculator.delete();
                                           calculator.updateDisplay();
                            });