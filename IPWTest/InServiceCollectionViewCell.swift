//
//  InServiceCollectionViewCell.swift
//  IPWTest
//
//  Created by Aaron Cleveland on 2/25/21.
//

import UIKit
import DropDown

class InServiceCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String = "InServiceCollectionViewCell"
    
    var serviceArray = [Service]()
    
    // Company Section
    let serviceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "van")
        return imageView
    }()
    
    let companyNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let companyHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    // Banner Section
    let bannerBackground: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "bannerBackground")
        return imageView
    }()
    
    // Order Status Section
    let orderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "invoice")
        return imageView
    }()
    let orderNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "#1337 • 3d"
        return label
    }()
    let orderHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    // Calendar Section
    let calendarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "calendar")
        return imageView
    }()
    
    let calendarDate: UILabel = {
        let date = UILabel()
        date.text = "02/25/21 • 12:30"
        return date
    }()
    
    let calendarHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    // Drop Down Section
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "STATUS"
        return label
    }()
    
    let dropDownMenuLabel: UILabel = {
        let label = UILabel()
        label.text = "Select Status"
        return label
    }()
    
    let dropDownImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "downArrow")
        return imageView
    }()
    
    let dropMenuHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
    }()
    
    let dropSelectionVStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        return stack
    }()
    
    // MARK: - Lifecycle -
    override init(frame: CGRect) {
        super.init(frame: frame)
        constraints()
        mockData()
        tapGestures()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions -
    func tapGestures() {
        dropDownMenuLabel.isUserInteractionEnabled = true
        let dropDownMenuTapGesture = UITapGestureRecognizer(target: self, action: #selector(dropDownMenuAction))
        dropDownMenuLabel.addGestureRecognizer(dropDownMenuTapGesture)
        
        dropDownImageView.isUserInteractionEnabled = true
        let dropDownImageViewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dropDownMenuAction))
        dropDownMenuLabel.addGestureRecognizer(dropDownImageViewTapGesture)
    }
    
    func mockData() {
        let service1 = Service(companyName: "All Right Deliveries", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service2 = Service(companyName: "All Right Deliveries", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service3 = Service(companyName: "All Right Deliveries", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service4 = Service(companyName: "All Right Deliveries", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service5 = Service(companyName: "All Right Deliveries", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        
        serviceArray.append(contentsOf: [service1, service2, service3, service4, service5])
    }
    
    // MARK: - Actions -
    @objc func dropDownMenuAction() {
        
    }
}

extension InServiceCollectionViewCell {
    private func constraints() {
        
    }
}
