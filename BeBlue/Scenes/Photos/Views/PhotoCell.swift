//
//  PhotoCell.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoCell: UICollectionViewCell {
    
    static let cellIdentifier = "photoCell"
    
    let image: UIImageView
    
    override init(frame: CGRect) {
        image = UIImageView(image: UIImage(named: "lobo.jpg"))
        
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponents() {
        contentView.addSubviewForAutolayout(image)
        
        image.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .vertical)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
