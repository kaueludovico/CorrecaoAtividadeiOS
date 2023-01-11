//
//  SucessViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 11/01/23.
//

import UIKit

class SuccessViewController: UIViewController {
    
    var successScreenView = SuccessScreenView()
    var schedule = Schedule()
    
    override func loadView() {
        view = successScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        successScreenView.okButton.addTarget(self, action: #selector(dismissModal), for: .touchUpInside)
        
    }
    
    func getData(schedule: Schedule) {
        self.schedule = schedule
        successScreenView.schedule = schedule
    }
    
    @objc func dismissModal() {
        var serviceListViewController = ServiceListViewController()
        serviceListViewController.getData(schedule: self.schedule)
        self.navigationController?.pushViewController(serviceListViewController, animated: true)
    }
}
