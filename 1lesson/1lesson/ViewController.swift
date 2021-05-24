//
//  ViewController.swift
//  1lesson
//
//  Created by Kir S on 13.04.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let hideAction = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(hideAction)
    }
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "loginSegue":
            
            let isAuth = logina()
            
            if !isAuth {
                showErrorAlert()
            }
            return isAuth
        default:
            return true
        }
    }
    
    func logina() -> Bool {
        let logInput = login.text!
        let passInput = password.text!
        
        return logInput == "admin" && passInput == "123456"
    }
        
func showErrorAlert() {
    let alert = UIAlertController(
        title: "ОПА!",
        message: "Вы ввели неверные данные",
        preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
}

}
    


