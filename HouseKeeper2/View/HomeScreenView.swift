//
//  HomeScreenView.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit


class HomeScreenView: BaseView {
    
    lazy var easyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "easy"), for: .normal)
        return button
    }()
    
    lazy var mediumButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "medium"), for: .normal)
        return button
    }()
    
    lazy var hardButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "hard"), for: .normal)
        return button
    }()
    
    override func addSubsviews() {
        self.addSubview(easyButton)
        self.addSubview(mediumButton)
        self.addSubview(hardButton)
    }
    
    override func setContraints() {
        easyButton.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: safeAreaLayoutGuide.trailingAnchor,
            padding: .init(top: 20, left: 16, bottom: 0, right: 16),
            size: .init(width: bounds.size.width, height: 230))
        
        mediumButton.anchor(
            top: easyButton.bottomAnchor,
            leading: easyButton.leadingAnchor,
            bottom: nil,
            trailing: easyButton.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: easyButton.bounds.size.width, height: 230))
        
        hardButton.anchor(
            top: mediumButton.bottomAnchor,
            leading: mediumButton.leadingAnchor,
            bottom: nil,
            trailing: mediumButton.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0),
            size: .init(width: easyButton.bounds.size.width, height: 230))
    }
    
}
