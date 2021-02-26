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
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "In Service"
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
        NSLayoutConstraint.activate([
            testCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            testCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            testCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            testCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InServiceCollectionViewCell.identifier, for: indexPath) as! InServiceCollectionViewCell
        cell.backgroundColor = .red
        return cell
    }
    
    
}
