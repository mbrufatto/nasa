//
//  PhotoDetailView.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 16/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

class PhotoDetailView: UIView {

    let camaraNameLabel: UILabel
    let photo: UIImageView
    
    override init(frame: CGRect) {
        
        camaraNameLabel = UILabel()
        photo = UIImageView()
        
        super.init(frame: frame)
        
        setupComponents()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponents() {
        
        backgroundColor = UIColor.white
        
        addSubviewForAutolayout(camaraNameLabel)
        addSubviewForAutolayout(photo)
    }
    
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            camaraNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0),
            camaraNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8.0),
            camaraNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10.0),
        ])
        
        NSLayoutConstraint.activate([
            photo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0),
            photo.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 8.0),
            photo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10.0)
        ])
    }
}
