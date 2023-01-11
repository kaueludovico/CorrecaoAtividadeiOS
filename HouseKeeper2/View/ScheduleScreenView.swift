//
//  ScheduleScreenView.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 11/01/23.
//

import UIKit

class ScheduleScreenView: BaseView {
    
    var schedule: Schedule? {
        didSet {
            typeServiceLabel.text = schedule?.typeService
        }
    }
    
    lazy var typeServiceLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var dateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Date"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var cepTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "00000-000"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var logradouroTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Logradouro"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var numberTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Nº"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var districtTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Bairro"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var cityTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Cidade"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var stateTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Estado"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var countryTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "País"
        textField.layer.borderWidth = 1
        return textField
    }()
    
    lazy var scheduleButton: UIButton = {
        let button = UIButton()
        button.setTitle("Agendar", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func addSubsviews() {
        addSubview(typeServiceLabel)
        addSubview(dateTextField)
        addSubview(cepTextField)
        addSubview(logradouroTextField)
        addSubview(numberTextField)
        addSubview(districtTextField)
        addSubview(cityTextField)
        addSubview(stateTextField)
        addSubview(countryTextField)
        
        addSubview(scheduleButton)
    }
    
    override func setContraints() {
        
        typeServiceLabel.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 20, left: 16, bottom: 0, right: 0),
            size: .init(width: 250, height: 40))
        
        dateTextField.anchor(
            top: typeServiceLabel.bottomAnchor,
            leading: typeServiceLabel.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 16),
            size: .init(width: 363, height: 40))
        
        cepTextField.anchor(
            top: dateTextField.bottomAnchor,
            leading: dateTextField.leadingAnchor,
            bottom: nil,
            trailing: dateTextField.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 363, height: 40))
        
        logradouroTextField.anchor(
            top: cepTextField.bottomAnchor,
            leading: cepTextField.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: 250, height: 40))
        
        numberTextField.anchor(top: logradouroTextField.topAnchor, leading: logradouroTextField.trailingAnchor, bottom: nil, trailing: cepTextField.trailingAnchor, padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: 100, height: 40))
        
        districtTextField.anchor(top: logradouroTextField.bottomAnchor, leading: logradouroTextField.leadingAnchor, bottom: nil, trailing: numberTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 40))
        
        cityTextField.anchor(top: districtTextField.bottomAnchor, leading: districtTextField.leadingAnchor, bottom: nil, trailing: districtTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 40))
        
        stateTextField.anchor(top: cityTextField.bottomAnchor, leading: cityTextField.leadingAnchor , bottom: nil, trailing: cityTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 40))
        
        countryTextField.anchor(top: stateTextField.bottomAnchor, leading: cityTextField.leadingAnchor, bottom: nil, trailing: cityTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 363, height: 40))
        
        scheduleButton.anchor(top: countryTextField.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 150, height: 40))
        scheduleButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    }
}
