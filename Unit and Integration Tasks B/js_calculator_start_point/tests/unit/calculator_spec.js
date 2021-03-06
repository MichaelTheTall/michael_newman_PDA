var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  // test calculator.add
  it('Test that 1+4 = 5', function(){
    calculator.previousTotal = 1;
    calculator.add(4);
    assert.equal(calculator.runningTotal, 5)
  })

  // test calculator.subtract()
  it('Test that 7-4 = 3', function(){
    calculator.previousTotal = 7;
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, 3)
  })

  // test calculator.multiply()
  it('Test that 3 x 5 = 15', function(){
    calculator.previousTotal = 3;
    calculator.multiply(5);
    assert.equal(calculator.runningTotal, 15)
  })

  // test calculator.divide()
  it('Test that 21 / 7 = 3', function(){
    calculator.previousTotal = 21;
    calculator.divide(7);
    assert.equal(calculator.runningTotal, 3)
  })

  // test calculator.numberClick()
  it('Test that pressing 9 twice gets 99', function(){
    calculator.numberClick(9);
    calculator.numberClick(9);
    assert.equal(calculator.runningTotal, 99)
  })

  // test calculator.operatorClick()
  it('Test that pressing 9 + 3 + 3 - 6 = 9', function(){
    calculator.numberClick(9);
    calculator.operatorClick('+');
    calculator.numberClick(3);
    calculator.operatorClick('+')
    calculator.numberClick(3);
    calculator.operatorClick('-');
    calculator.numberClick(6);
    calculator.operatorClick('=');
    assert.equal(calculator.runningTotal, 9)
  })

  // test calculator.clearClick()
  it('Test that pressing 9 + 3 + 3 CLEAR = 12', function(){
    calculator.numberClick(9);
    calculator.operatorClick('+');
    calculator.numberClick(3);
    calculator.operatorClick('+')
    calculator.numberClick(3);
    calculator.clearClick();
    calculator.operatorClick('=')
    assert.equal(calculator.runningTotal, 12)
  })

});
