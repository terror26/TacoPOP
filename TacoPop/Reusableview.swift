//
//  Reusableview.swift
//  TacoPop
//
//  Created by Kanishk Verma on 24/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

protocol ReusableView:class {}

extension ReusableView where Self : UIView {
    
    static var reusableIdentifier:String {
     
        return String(describing: self)
    }
}

