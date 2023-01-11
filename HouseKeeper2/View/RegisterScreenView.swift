//
//  RegisterScreenView.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class RegisterScreenView: BaseView {
        
        lazy var background: UIView = {
           let background = UIView()
            background.backgroundColor = .white
            return background
        }()
        
        lazy var label: UILabel = {
            let label = UILabel()
            label.text = "Crie sua conta"
            label.textAlignment = .center
            label.font = label.font.withSize(20)
            return label
        }()
        
        lazy var labelInfo: UILabel = {
            let labelInfo = UILabel()
            labelInfo.text = "Insira seus dados pessoais"
            labelInfo.textAlignment = .center
            labelInfo.font = labelInfo.font.withSize(16)
            return labelInfo
        }()
        
        lazy var nameField: UITextField = {
            let nameField = UITextField()
            nameField.placeholder = "Nome completo"
            nameField.layer.borderWidth = 2
            nameField.layer.borderColor = UIColor.black.cgColor
            nameField.autocapitalizationType = .none
            return nameField
        }()
        
        lazy var emailField: UITextField = {
            let emailField = UITextField()
            emailField.placeholder = "  E-mail"
            emailField.layer.borderWidth = 2
            emailField.layer.borderColor = UIColor.black.cgColor
            emailField.autocapitalizationType = .none
            return emailField
        }()
        
        lazy var cpfField: UITextField = {
           let cpfField = UITextField()
            cpfField.placeholder = "  CPF"
            cpfField.layer.borderWidth = 2
            cpfField.layer.borderColor = UIColor.black.cgColor
            return cpfField
        }()
        
        lazy var rgField: UITextField = {
            let rgField = UITextField()
            rgField.placeholder = "  RG"
            rgField.layer.borderWidth = 2
            rgField.layer.borderColor = UIColor.black.cgColor
            return rgField
        }()
        
        lazy var birthField: UITextField = {
            let birthField = UITextField()
            birthField.placeholder = "  Data de nascimento"
            birthField.layer.borderWidth = 2
            birthField.layer.borderColor = UIColor.black.cgColor
            return birthField
        }()
        
        lazy var passwordField: UITextField = {
            let passwordField = UITextField()
            passwordField.placeholder = "  Senha"
            passwordField.layer.borderWidth = 2
            passwordField.layer.borderColor = UIColor.black.cgColor
            passwordField.autocapitalizationType = .none
            passwordField.isSecureTextEntry = true
            return passwordField
        }()
        
        lazy var labelAdress: UILabel = {
            let labelInfo = UILabel()
            labelInfo.text = "Insira suas informações residenciais"
            labelInfo.font = labelInfo.font.withSize(16)
            labelInfo.textAlignment = .center
            return labelInfo
        }()
        
        lazy var adressField: UITextField = {
            let adressField = UITextField()
            adressField.placeholder = "  Logradouro"
            adressField.layer.borderWidth = 2
            adressField.layer.borderColor = UIColor.black.cgColor
            adressField.autocapitalizationType = .none
            return adressField
        }()
        
        lazy var cepField: UITextField = {
            let cepField = UITextField()
            cepField.placeholder = "  CEP"
            cepField.layer.borderWidth = 2
            cepField.layer.borderColor = UIColor.black.cgColor
            return cepField
        }()
        
        lazy var countryField: UITextField = {
            let countryField = UITextField()
            countryField.placeholder = "  País"
            countryField.layer.borderWidth = 2
            countryField.layer.borderColor = UIColor.black.cgColor
            countryField.autocapitalizationType = .none
            return countryField
        }()
        
        lazy var ufField: UITextField = {
            let ufField = UITextField()
            ufField.placeholder = "  Estado"
            ufField.layer.borderWidth = 2
            ufField.layer.borderColor = UIColor.black.cgColor
            ufField.autocapitalizationType = .none
            return ufField
        }()
        
        lazy var cityField: UITextField = {
            let cityField = UITextField()
            cityField.placeholder = "  Cidade"
            cityField.layer.borderWidth = 2
            cityField.layer.borderColor = UIColor.black.cgColor
            cityField.autocapitalizationType = .none
            return cityField
        }()
        
        lazy var districtField: UITextField = {
            let districtField = UITextField()
            districtField.placeholder = "  Bairro"
            districtField.layer.borderWidth = 2
            districtField.layer.borderColor = UIColor.black.cgColor
            districtField.autocapitalizationType = .none
            return districtField
        }()
        
        
        lazy var nextBtn: UIButton = {
            let nextBtn = UIButton()
            nextBtn.setTitle("Cadastrar", for: .normal)
            nextBtn.backgroundColor = .black
            return nextBtn
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func addSubsviews(){
            addSubview(background)
            background.addSubview(label)
            background.addSubview(labelInfo)
            background.addSubview(nameField)
            background.addSubview(emailField)
            background.addSubview(cpfField)
            background.addSubview(rgField)
            background.addSubview(birthField)
            background.addSubview(passwordField)
            background.addSubview(labelAdress)
            background.addSubview(adressField)
            background.addSubview(cepField)
            background.addSubview(countryField)
            background.addSubview(ufField)
            background.addSubview(cityField)
            background.addSubview(districtField)
            background.addSubview(nextBtn)
        }
        
        override func setContraints() {
            background.anchor(
                top: self.topAnchor,
                leading: self.leadingAnchor,
                bottom: self.bottomAnchor,
                trailing: self.trailingAnchor,
                padding: .init(top: 0, left: 0, bottom: 0, right: 0),
                size: .init(width: frame.width, height: frame.height))
            
            label.anchor(
                top: background.topAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 70, left: 0, bottom: 0, right: 0),
                size: .init(width: 200, height: 30))
            
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            labelInfo.anchor(
                top: label.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 7, left: 7, bottom: 0, right: 0),
                size: .init(width: 200, height: 30))
            
            labelInfo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
            nameField.anchor(
                top: labelInfo.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 20, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            nameField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            emailField.anchor(
                top: nameField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            emailField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            cpfField.anchor(
                top: emailField.bottomAnchor,
                leading: emailField.leadingAnchor,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 150, height: 40))
            
            rgField.anchor(
                top: emailField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: emailField.trailingAnchor,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 150, height: 40))
            
            
            birthField.anchor(
                top: rgField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            birthField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            passwordField.anchor(
                top: birthField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            passwordField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
            
            labelAdress.anchor(
                top: passwordField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 25, left: 0, bottom: 0, right: 0),
                size: .init(width: 300, height: 30))
            
            labelAdress.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
            adressField.anchor(
                top: labelAdress.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 20, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            adressField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
            cepField.anchor(
                top: adressField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            cepField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
            countryField.anchor(
                top: cepField.bottomAnchor,
                leading: cepField.leadingAnchor,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 150, height: 40))
            
            ufField.anchor(
                top: cepField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: cepField.trailingAnchor,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 150, height: 40))
            
            cityField.anchor(
                top: ufField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            cityField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            
            districtField.anchor(
                top: cityField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 40))
            
            districtField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

            
            nextBtn.anchor(
                top: districtField.bottomAnchor,
                leading: nil,
                bottom: nil,
                trailing: nil,
                padding: .init(top: 30, left: 0, bottom: 0, right: 0),
                size: .init(width: 320, height: 50))

            nextBtn.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        }
}
