//
//  LoginScreenView.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class LoginScreenView: BaseView {
    
    lazy var txtEmail: UITextField = {
        let textField = UITextField()
        textField.placeholder = "E-mail"
        textField.keyboardType = .emailAddress
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var txtSenha: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Senha"
        textField.isSecureTextEntry = true
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .black
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Cadastre-se", for: .normal)
        button.backgroundColor = .black
        return button
    }()
    
    override func addSubsviews() {
        
        addSubview(txtEmail)
        addSubview(txtSenha)
        addSubview(loginButton)
        addSubview(registerButton)
        
    }
    
    override func setContraints() {
        txtEmail.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 250, left: 16, bottom: 0, right: 16),
            size: .init(width: 363, height: 40)
        )
        txtSenha.anchor(
            top: txtEmail.bottomAnchor,
            leading: txtEmail.leadingAnchor,
            bottom: nil,
            trailing: txtEmail.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 363, height: 40)
        )
        
        loginButton.anchor(
            top: txtSenha.bottomAnchor,
            leading: txtSenha.leadingAnchor,
            bottom: nil,
            trailing: txtSenha.trailingAnchor,
            padding: .init(top: 24, left: 100, bottom: 0, right: 100),
            size: .init(width: 163, height: 40))
        
        registerButton.anchor(
            top: loginButton.bottomAnchor,
            leading: loginButton.leadingAnchor,
            bottom: nil,
            trailing: loginButton.trailingAnchor,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            size: .init(width: loginButton.frame.width, height: loginButton.frame.height))
    }
}
