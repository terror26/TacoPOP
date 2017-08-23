//
//  Dropshadow.swift
//  TacoPop
//
//  Created by Kanishk Verma on 23/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

protocol Dropshadow {}

extension Dropshadow where Self:UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.8
    }
}
