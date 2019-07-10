//
//  UIView.swift
//  BeBlue
//
//  Created by Marcio Habigzang Brufatto on 04/07/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviewForAutolayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
}
