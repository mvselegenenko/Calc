//
//  ViewController.swift
//  Calc
//
//  Created by Михаил Селегененко on 13.06.2018.
//  Copyright © 2018 Михаил Селегененко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var display: UILabel!

	func printDisplay()  {
		if stringValue == ""{
			display.text = String(0)
		} else {
		display.text = stringValue
		}
	}

	@IBAction func buttonNumber(_ sender: UIButton) {
		stringValue += sender.currentTitle!
		printDisplay()
	}

	@IBAction func buttonOperation(_ sender: UIButton) {
		if stringValue != "" {
		firstOperand = Double(stringValue)!
			secondOperand = firstOperand
			//Value has secondOperand, firstOperand is cleared
			firstOperand = 0
			stringValue = ""
			printDisplay()
			let stringOperator = sender.currentTitle!
			switch stringOperator {
			case "÷":
				result = secondOperand / firstOperand
			case "*":
				result = secondOperand * firstOperand
			case "+":
				result = secondOperand + firstOperand
			case "-":
				result = secondOperand - firstOperand
			default: break

			}
		}

		print(firstOperand, secondOperand, result)
	}

	
	override func viewDidLoad() {
		super.viewDidLoad()
		printDisplay()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

