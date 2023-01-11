//
//  ScheduleViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 10/01/23.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    var scheduleScreenView = ScheduleScreenView()
    var schedule = Schedule()
    
    override func loadView() {
        view = scheduleScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scheduleScreenView.scheduleButton.addTarget(self, action: #selector(navigateToSuccess), for: .touchUpInside)
    }
    
    func getIdService(id: Int){
        
        switch id {
        case 2:
            schedule.typeService = "Limpeza Média"
            scheduleScreenView.schedule = schedule
            break
        case 3:
            schedule.typeService = "Limpeza Pesada"
            scheduleScreenView.schedule = schedule
            break
        default:
            schedule.typeService = "Limpeza Leve"
            scheduleScreenView.schedule = schedule
            break
        }
    }
    
    @objc func navigateToSuccess() {
        
        var schedule = Schedule(
            typeService: self.schedule.typeService,
            date: scheduleScreenView.dateTextField.text,
            address:
                Address(
                    logradouro: scheduleScreenView.logradouroTextField.text,
                    number: scheduleScreenView.numberTextField.text,
                    cep: scheduleScreenView.cepTextField.text,
                    district: scheduleScreenView.districtTextField.text,
                    city: scheduleScreenView.cityTextField.text,
                    state: scheduleScreenView.stateTextField.text,
                    country: scheduleScreenView.countryTextField.text))
        
        var successViewController = SuccessViewController()
        successViewController.getData(schedule: schedule)
        self.navigationController?.pushViewController(successViewController, animated: true)
    }
}
