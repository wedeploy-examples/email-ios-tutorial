//
//  ViewController.swift
//  Boilerplate-email
//
//  Created by Víctor Galán on 10/4/17.
//  Copyright © 2017 liferay. All rights reserved.
//

import UIKit
import WeDeploy

class EmailViewController: UIViewController {

	@IBOutlet weak var toTextField: BorderLessTextField!
	@IBOutlet weak var fromTextField: BorderLessTextField!
	@IBOutlet weak var subjectTextField: BorderLessTextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleScreenTap))
		view.addGestureRecognizer(tapGesture)
	}
	
	@IBAction func submitButtonClick() {
		guard let to = toTextField.text,
			let from = fromTextField.text,
			let subject = subjectTextField.text else {
				
			print("You have to fill all the fields")
			return
		}

		// Paste the code here

		//---------------
	}
	
	func handleScreenTap() {
		view.endEditing(true)
	}
	
	func showAlert(with title: String, message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
		alert.addAction(action)
		
		present(alert, animated: true, completion: nil)
	}

}

