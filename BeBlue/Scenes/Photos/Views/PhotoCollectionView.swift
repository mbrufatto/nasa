//
//  PhotoCollectionView.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

class PhotoCollectionView: UIView {
    
    let collectionView: UICollectionView
    let segmentControll: UISegmentedControl
    let segmentControlOptions = ["Curiosity", "Opportunity", "Spirit"]
    
    override init(frame: CGRect) {
        
        collectionView = UICollectionView(frame: frame, collectionViewLayout: UICollectionViewFlowLayout())
        
        segmentControll = UISegmentedControl(items: segmentControlOptions)
        
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponents() {
        segmentControll.layer.cornerRadius = 5.0
        
        setupCollectionView()
        
        addSubviewForAutolayout(segmentControll)
        addSubviewForAutolayout(collectionView)
    }
    
    func setupCollectionView() {
        
        collectionView.backgroundColor = UIColor.white
    }
    
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            segmentControll.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0),
            segmentControll.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
            segmentControll.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10.0),
        ])
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: segmentControll.bottomAnchor, constant: 8.0),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
