//
//  ViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var customLoginView = LoginScreenView()
    var user = User()
    
    override func loadView() {
        view = customLoginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customLoginView.registerButton.addTarget(self, action: #selector(navigateToRegister), for: .touchUpInside)
        customLoginView.loginButton.addTarget(self, action: #selector(validateLogin), for: .touchUpInside)
    }
    
    func getUser(user: User) {
        self.user = user
    }
    
    @objc func validateLogin() {
        if user.login?.email != customLoginView.txtEmail.text || user.login?.password != customLoginView.txtSenha.text {
            print("Login incorreto")
        } else {
            navigateToHome()
        }
    }
    
    @objc func navigateToRegister() {
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }
    
    func navigateToHome() {
        let homeViewController = HomeViewController()
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
}

