//
//  ServiceListCollectionViewCell.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 11/01/23.
//

import UIKit

class ServiceListCollectionViewCell: BaseCell {
    
    var schedule: Schedule? {
        didSet {
            typeServiceTitleLabel.text = schedule?.typeService
            dateServiceLabel.text = schedule?.date
            addressServiceLabel.text = concatenate()
        }
    }
    
    lazy var typeServiceTitleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var dateServiceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var addressServiceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = UIColor.black
        return label
    }()
    
    override func addSubsviews() {
        addSubview(typeServiceTitleLabel)
        addSubview(dateServiceLabel)
        addSubview(addressServiceLabel)
        
    }
    
    override func setContraints() {
        typeServiceTitleLabel.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 10, left: 10, bottom: 0, right: 0), size: .init(width: 200, height: 30))
        dateServiceLabel.anchor(top: typeServiceTitleLabel.bottomAnchor, leading: typeServiceTitleLabel.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 8, left: 0, bottom: 0, right: 0), size: .init(width: 200, height: 30))
        addressServiceLabel.anchor(top: dateServiceLabel.bottomAnchor, leading: dateServiceLabel.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 4, left: 0, bottom: 8, right: 10), size: .init(width: 340, height: 40))
    }
    
    func concatenate() -> String {
        return "\(schedule?.typeService) - \(schedule?.date), Endereço: \(schedule?.address)"
    }
}
