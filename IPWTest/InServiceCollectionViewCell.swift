//
//  InServiceCollectionViewCell.swift
//  IPWTest
//
//  Created by Aaron Cleveland on 2/25/21.
//

import UIKit

class InServiceCollectionViewCell: UICollectionViewCell {
    
    static var identifier: String = "InServiceCollectionViewCell"
    
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
        stack.distribution = .fill
        stack.alignment = .fill
        return stack
    }()
    
    // Calendar Section
    let calendarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "calendar")
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
