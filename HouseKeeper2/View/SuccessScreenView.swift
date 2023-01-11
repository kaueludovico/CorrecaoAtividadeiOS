//
//  SuccessScreenView.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 11/01/23.
//

import UIKit

class SuccessScreenView: BaseView {
    
    var schedule: Schedule? {
        didSet {
            dataScheduleLabel.text = concatenate()
        }
    }
    
    lazy var successImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "successicon")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var successLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.text = "Serviço agendado com sucesso!"
        label.textColor = .black
        return label
    }()
    
    lazy var dataScheduleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    lazy var okButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button 
    }()
    
    override func addSubsviews() {
        backgroundColor = .white
        addSubview(successImageView)
        addSubview(successLabel)
        addSubview(dataScheduleLabel)
        addSubview(okButton)
    }
    
    
    override func setContraints() {
        successImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        successImageView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 100, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 200))
        
        successLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        successLabel.anchor(top: successImageView.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 300, height: 60))
        
        dataScheduleLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        dataScheduleLabel.anchor(top: successLabel.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 60))
        
        okButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        okButton.anchor(top: dataScheduleLabel.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 40))
    }
    
    func concatenate() -> String {
        return "\(schedule?.typeService) - \(schedule?.date), Endereço: \(schedule?.address)"
    }
}
