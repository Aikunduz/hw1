//
//  ViewController.swift
//  CLASS 3 MONTH
//
//  Created by Aikunduz on 5/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func eyeButton(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry == true {
            passwordTextField.isSecureTextEntry = false
            sender.setImage(UIImage(systemName: "eye.slash.fill"), for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            sender.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        }
    }
    
    @IBAction func rememberButtonTapped(_ sender: UIButton) {


        if sender.imageView?.image == UIImage(systemName: "square") {
            sender.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "square"), for: .normal)
        }
    }
    
    @IBAction func signInButtonTapped(_ sender: UIButton) {
        let pass = passwordTextField.checkEmptyTf()
        let user = usernameTextField.checkEmptyTf()
        
        if user && pass {
            performSegue(withIdentifier: "goToSuccess", sender: self)
        }
        
        
        
    }
    
    
    private func checkEmptyTf(textField: UITextField) -> Bool{
        let tf = textField.text
        if  tf == "" {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Заполните пж"
            return false
        } else {
            textField.layer.borderWidth = 0
            textField.layer.borderColor = UIColor.red.cgColor
            return true
        }
    }
    
}

extension UITextField {
    func checkEmptyTf() -> Bool {
        let tf = self.text
        if  tf == "" {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.red.cgColor
            self.placeholder = "Заполните пж"
            return false
        } else {
            self.layer.borderWidth = 0
            self.layer.borderColor = UIColor.red.cgColor
            return true
        }
    }
}
