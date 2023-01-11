//
//  ServiceListViewController.swift
//  HouseKeeper2
//
//  Created by Kaue Ludovico on 11/01/23.
//

import UIKit

class ServiceListViewController: UIViewController {
    
    var serviceListScreenView = ServiceListScreenView()
    var schedules: [Schedule]?

    override func loadView() {
        view = serviceListScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionView()
        
    }
    
    func setCollectionView() {
        serviceListScreenView.collectionView.delegate = self
        serviceListScreenView.collectionView.dataSource = self
    }
    
    func getData(schedule: Schedule) {
        schedules = [schedule]
    }
}

extension ServiceListViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = schedules?.count {
            return count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: serviceListScreenView.cellId, for: indexPath) as? ServiceListCollectionViewCell
        
        if let item = schedules?[indexPath.item] {
            cell?.schedule = item
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
