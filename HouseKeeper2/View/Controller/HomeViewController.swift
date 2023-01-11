//
//  HomeViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var customHomeScreen = HomeScreenView()
    
    override func loadView() {
        view = customHomeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonClicked()
    }
    
    func setButtonClicked() {
        customHomeScreen.easyButton.addTarget(self, action: #selector(actionEasyButton), for: .touchUpInside)
        customHomeScreen.mediumButton.addTarget(self, action: #selector(actionMediumButton), for: .touchUpInside)
        customHomeScreen.hardButton.addTarget(self, action: #selector(actionHardButton), for: .touchUpInside)
    }
    
    @objc func actionEasyButton() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.getIdService(id: 1)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
    
    @objc func actionMediumButton() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.getIdService(id: 2)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
    
    @objc func actionHardButton() {
        let scheduleViewController = ScheduleViewController()
        scheduleViewController.getIdService(id: 3)
        self.navigationController?.pushViewController(scheduleViewController, animated: true)
    }
}
