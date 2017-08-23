//
//  TacoCell.swift
//  TacoPop
//
//  Created by Kanishk Verma on 23/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell,NibLoadableView {

    @IBOutlet weak var tacoimage:UIImageView!
    @IBOutlet weak var tacolbl:UILabel!
    
    var taco : Taco!

    func configurecell(taco:Taco)  {
        self.taco = taco
        tacoimage.image = UIImage(named: taco.proteinid.rawValue)
        tacolbl.text = taco.productname
    }
}
