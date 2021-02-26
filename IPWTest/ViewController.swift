//
//  ViewController.swift
//  IPWTest
//
//  Created by Aaron Cleveland on 2/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    let navBar: UINavigationBar = {
        let navBar = UINavigationBar()
        navBar.backgroundColor = .black
        return navBar
    }()
    
    let menuButton: UIButton = {
        let menuButton = UIButton()
        let menuImageView = UIImageView()
        menuImageView.image = UIImage(named: "menu")?.withTintColor(.white)
        menuButton.imageView?.contentMode = .scaleAspectFit
        menuButton.imageView?.setDimensions(width: 24, height: 24)
        menuButton.setImage(menuImageView.image, for: .normal)
        return menuButton
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "logo")
        imageView.setDimensions(width: 150, height: 70)
        return imageView
    }()
    
    let exitButton: UIButton = {
        let exitButton = UIButton()
        let exitImageView = UIImageView()
        exitImageView.image = UIImage(named: "exit")?.withTintColor(UIColor(red: 4/255, green: 192/255, blue: 255/255, alpha: 1.0))
        exitButton.imageView?.contentMode = .scaleAspectFit
        exitButton.imageView?.setDimensions(width: 24, height: 24)
        exitButton.setImage(exitImageView.image, for: .normal)
        return exitButton
    }()
    
    let testCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 327, height: 210)
        
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
        subviews()
        constraints()
        delegates()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func delegates() {
        testCollectionView.delegate = self
        testCollectionView.dataSource = self
    }
    
    private func subviews() {
        view.addSubview(navBar)
        view.addSubview(menuButton)
        view.addSubview(logoImageView)
        view.addSubview(exitButton)
        view.addSubview(testCollectionView)
    }
    
    private func constraints() {
        navBar.layout(top: view.topAnchor,
                      leading: view.leadingAnchor,
                      trailing: view.trailingAnchor)
        navBar.setDimensions(width: view.frame.width, height: 120)
        
        logoImageView.centerX(inView: navBar,
                              topAnchor: navBar.safeAreaLayoutGuide.topAnchor,
                              paddingTop: 0)
        
        menuButton.layout(top: navBar.safeAreaLayoutGuide.topAnchor,
                          leading: navBar.leadingAnchor,
                          paddingLeading: 8)
        menuButton.centerY(inView: logoImageView)
        
        exitButton.layout(top: navBar.safeAreaLayoutGuide.topAnchor,
                          trailing: navBar.trailingAnchor,
                          paddingTrailing: -8)
        exitButton.centerY(inView: logoImageView)
        
        
        testCollectionView.layout(top: navBar.bottomAnchor,
                                  bottom: view.bottomAnchor,
                                  leading: view.leadingAnchor,
                                  trailing: view.trailingAnchor)
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
