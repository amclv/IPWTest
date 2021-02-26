//
//  InServiceCollectionViewCell.swift
//  IPWTest
//
//  Created by Aaron Cleveland on 2/25/21.
//

import UIKit
import Painless

class InServiceCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String = "InServiceCollectionViewCell"
    
    var serviceArray = [Service]()
    
    // Company Section
    let serviceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "van")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        return imageView
    }()
    
    let companyNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return label
    }()
    
    let companyHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 16
        return stack
    }()
    
    // Banner Section
    let bannerBackground: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "bannerBackground")?.withTintColor(UIColor(red: 94/255, green: 227/255, blue: 123/255, alpha: 1.0))
        imageView.setDimensions(width: 89, height: 20.4)
        return imageView
    }()
    
    let bannerLabel: UILabel = {
        let label = UILabel()
        label.text = "In Service"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        return label
    }()
    
    // Order Status Section
    let orderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "invoice")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        imageView.setDimensions(width: 18, height: 18)
        return imageView
    }()
    let orderNumberLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .medium)
        return label
    }()
    let orderHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 16
        return stack
    }()
    
    // Calendar Section
    let calendarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "calender")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        imageView.setDimensions(width: 20, height: 20)
        return imageView
    }()
    
    let calendarDate: UILabel = {
        let date = UILabel()
        date.font = .systemFont(ofSize: 15, weight: .medium)
        return date
    }()
    
    let calendarHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .fill
        stack.spacing = 8
        return stack
    }()
    
    // Drop Down Section
    let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "STATUS"
        label.textColor = UIColor(red: 154/255, green: 156/255, blue: 157/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    let dropDownBackground: UIView = {
        let background = UIView()
        background.layer.borderColor = UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1.0).cgColor
        background.layer.borderWidth = 1.0
        background.layer.cornerRadius = 5
        background.setDimensions(width: 300, height: 47)
        return background
    }()
    
    let dropDownMenuLabel: UILabel = {
        let label = UILabel()
        label.text = "Select Status"
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    let dropDownImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "downArrow")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        imageView.setDimensions(width: 20, height: 20)
        return imageView
    }()
    
    let dropMenuHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        return stack
    }()
    
    // Button Section
    let viewButton: UIButton = {
        let button = UIButton()
        let viewImage = UIImageView()
        viewImage.image = UIImage(named: "view")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        button.imageView?.contentMode = .scaleAspectFit
        button.imageView?.setDimensions(width: 20, height: 20)
        button.setImage(viewImage.image, for: .normal)
        
        button.setTitle("View", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.centerY(inView: button.imageView!)
        return button
    }()
    
    let editButton: UIButton = {
        let button = UIButton()
        let editImage = UIImageView()
        editImage.image = UIImage(named: "edit")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        button.imageView?.contentMode = .scaleAspectFit
        button.imageView?.setDimensions(width: 20, height: 20)
        button.setImage(editImage.image, for: .normal)
        
        button.setTitle("Edit", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.centerY(inView: button.imageView!)
        return button
    }()
    
    let serviceSheetButton: UIButton = {
        let button = UIButton()
        let serviceImage = UIImageView()
        serviceImage.image = UIImage(named: "serviceSheet")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        button.imageView?.contentMode = .scaleAspectFit
        button.imageView?.setDimensions(width: 20, height: 20)
        button.setImage(serviceImage.image, for: .normal)
        
        button.setTitle("Service Sheet", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.centerY(inView: button.imageView!)
        return button
    }()
    
    let buttonHStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.spacing = 8
        return stack
    }()
    
    // MARK: - Lifecycle -
    override init(frame: CGRect) {
        super.init(frame: frame)
        constraints()
        mockData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions -
    
    func mockData() {
        let service1 = Service(companyName: "ALL DELIVERIES", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service2 = Service(companyName: "ALL DELIVERIES", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service3 = Service(companyName: "ALL DELIVERIES", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service4 = Service(companyName: "ALL DELIVERIES", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        let service5 = Service(companyName: "ALL DELIVERIES", orderNumber: "#1337 • 4d", orderDate: "02/20/21 • 8:45", status: "In Service")
        
        serviceArray.append(contentsOf: [service1, service2, service3, service4, service5])
    }
}

extension InServiceCollectionViewCell {
    private func constraints() {
        companyHStack.addArrangedSubview(serviceImageView)
        serviceImageView.setDimensions(width: 20, height: 20)
        companyHStack.addArrangedSubview(companyNameLabel)
        addSubview(companyHStack)
        companyHStack.layout(top: self.topAnchor,
                             leading: self.leadingAnchor,
                             paddingTop: 10,
                             paddingLeading: 20)
        
        addSubview(bannerBackground)
        bannerBackground.layout(top: self.topAnchor,
                                leading: companyHStack.trailingAnchor,
                                trailing: self.trailingAnchor,
                                paddingTrailing: -20)
        addSubview(bannerLabel)
        bannerLabel.center(inView: bannerBackground)
        
        orderHStack.addArrangedSubview(orderImageView)
        orderHStack.addArrangedSubview(orderNumberLabel)
        addSubview(orderHStack)
        orderHStack.layout(top: companyHStack.bottomAnchor,
                           leading: companyHStack.leadingAnchor,
                           trailing: self.trailingAnchor,
                           paddingTop: 16)
        
        calendarHStack.addArrangedSubview(calendarImageView)
        calendarHStack.addArrangedSubview(calendarDate)
        addSubview(calendarHStack)
        calendarHStack.layout(top: companyHStack.bottomAnchor,
                              trailing: bannerBackground.trailingAnchor)
        calendarHStack.centerY(inView: orderHStack)
        
        addSubview(statusLabel)
        statusLabel.layout(top: orderHStack.bottomAnchor,
                           leading: orderHStack.leadingAnchor,
                           trailing: calendarHStack.trailingAnchor,
                           paddingTop: 16)
        
        addSubview(dropDownBackground)
        dropDownBackground.layout(top: statusLabel.bottomAnchor,
                                  leading: statusLabel.leadingAnchor,
                                  trailing: statusLabel.trailingAnchor,
                                  paddingTop: 16)
        
        dropMenuHStack.addArrangedSubview(dropDownMenuLabel)
        dropMenuHStack.addArrangedSubview(dropDownImageView)
        dropDownBackground.addSubview(dropMenuHStack)
        dropMenuHStack.centerY(inView: dropDownBackground)
        dropMenuHStack.layout(leading: dropDownBackground.leadingAnchor,
                              trailing: dropDownBackground.trailingAnchor,
                              paddingLeading: 20,
                              paddingTrailing: -20)
        
        
        buttonHStack.addArrangedSubview(viewButton)
        buttonHStack.addArrangedSubview(editButton)
        buttonHStack.addArrangedSubview(serviceSheetButton)
        buttonHStack.addVerticalSeparators(color: UIColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1.0))
        addSubview(buttonHStack)
        buttonHStack.layout(top: dropDownBackground.bottomAnchor,
                            bottom: self.bottomAnchor,
                            leading: dropDownBackground.leadingAnchor,
                            trailing: dropDownBackground.trailingAnchor,
                            paddingTop: 8,
                            paddingBottom: -8)
    }
}

extension UIStackView {
    func addVerticalSeparators(color : UIColor) {
        var i = self.arrangedSubviews.count
        while i > 1 {
            let separator = verticalCreateSeparator(color: color)
            insertArrangedSubview(separator, at: i-1)   // (i-1) for centers only
            separator.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1).isActive = true
            i -= 1
        }
    }

    private func verticalCreateSeparator(color : UIColor) -> UIView {
        let separator = UIView()
        separator.widthAnchor.constraint(equalToConstant: 1).isActive = true
        separator.backgroundColor = color
        return separator
    }
}
