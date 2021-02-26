//
//  ViewController.swift
//  IPWTest
//
//  Created by Aaron Cleveland on 2/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    let testCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 327, height: 192)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(InServiceCollectionViewCell.self, forCellWithReuseIdentifier: InServiceCollectionViewCell.identifier)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "In Service"
        navigationController?.navigationBar.prefersLargeTitles = true
        subviews()
        constraints()
        delegates()
    }
    
    private func delegates() {
        testCollectionView.delegate = self
        testCollectionView.dataSource = self
    }
    
    private func subviews() {
        view.addSubview(testCollectionView)
    }
    
    private func constraints() {
        testCollectionView.layout(top: view.safeAreaLayoutGuide.topAnchor,
                                  bottom: view.bottomAnchor,
                                  leading: view.leadingAnchor,
                                  trailing: view.trailingAnchor,
                                  paddingTop: 8,
                                  paddingLeading: 8,
                                  paddingTrailing: -8)
    }
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let data = InServiceCollectionViewCell()
        return data.serviceArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InServiceCollectionViewCell.identifier, for: indexPath) as! InServiceCollectionViewCell
        let data = cell.serviceArray[indexPath.row]
        cell.companyNameLabel.text = data.companyName
        cell.orderNumberLabel.text = data.orderNumber
        cell.calendarDate.text = data.orderDate
        
        
        cell.contentView.layer.cornerRadius = 10.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        
        cell.layer.backgroundColor = UIColor.white.cgColor
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 0.7
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
    }
}
