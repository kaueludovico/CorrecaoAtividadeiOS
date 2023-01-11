//
//  RegisterViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var customRegisterView = RegisterScreenView()
    
    override func loadView() {
        view = customRegisterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customRegisterView.nextBtn.addTarget(self, action: #selector(createUser), for: .touchUpInside)
    }
    
    @objc func createUser() {
        var user = User(
            id: 0,
            name: customRegisterView.nameField.text,
            birth: customRegisterView.birthField.text,
            rg: customRegisterView.rgField.text,
            cpf: customRegisterView.cpfField.text,
            address: Address(
                logradouro: customRegisterView.adressField.text,
                number: "1312",
                cep: customRegisterView.cepField.text,
                district: customRegisterView.districtField.text,
                city: customRegisterView.cityField.text,
                state: customRegisterView.ufField.text,
                country: customRegisterView.countryField.text),
            login: Login(
                email: customRegisterView.emailField.text,
                password: customRegisterView.passwordField.text)
        )
        
        var loginViewController = LoginViewController()
        loginViewController.getUser(user: user)
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
