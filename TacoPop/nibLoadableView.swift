//
//  nibLoadableView.swift
//  TacoPop
//
//  Created by Kanishk Verma on 24/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

protocol NibLoadableView:class {}

extension NibLoadableView where Self:UIView {
    static var nibName : String {
        return String(describing: self)
    }
}
