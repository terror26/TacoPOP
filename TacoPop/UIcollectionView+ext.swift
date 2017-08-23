//
//  UIcollectionView+ext.swift
//  TacoPop
//
//  Created by Kanishk Verma on 24/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register <T: UICollectionViewCell> (_: T.Type) where T: ReusableView , T: NibLoadableView{
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reusableIdentifier)
    }
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reusableIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reusableIdentifier)")
        }
        
        return cell
    }

}
extension UICollectionViewCell:ReusableView{}





