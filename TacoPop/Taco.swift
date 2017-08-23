//
//  Taco.swift
//  TacoPop
//
//  Created by Kanishk Verma on 23/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case flour = 1
    case corn = 2
}

enum TacoProtein: String {
    case beef = "Beef"
    case fish = "Fish"
    case chicken = "Chicken"
    case frisket = "Brisket"
}

enum TacoCondiment:Int {
    case laoded = 1
    case plain = 2
}

struct Taco {
    
    private var _id:Int!
    private var _productname:String!
    private var _shellId:TacoShell!
    private var _proteinId:TacoProtein!
    private var _condimentid:TacoCondiment!
    
    var id:Int {
        return _id
    }
    
    var productname:String {
        return _productname
    }
    
    var shellId:TacoShell {
        return _shellId
    }
    
    var proteinid:TacoProtein {
        return _proteinId
    }
    
    var condimentid:TacoCondiment {
        return _condimentid
    }
    
    init(id: Int , productname: String ,shellId:Int , proteinid:Int , condimentid:Int) {
        
        _id = id
        _productname = productname
        
        
        //Tacoshell
        switch shellId {
        case 2:
            self._shellId = TacoShell.corn
        default :
            self._shellId = TacoShell.flour
        }
        
        //taco protein
        switch proteinid {
            
        case 2:
            self._proteinId = TacoProtein.chicken
        
        case 3:
            self._proteinId = TacoProtein.frisket
        case 4:
            self._proteinId = TacoProtein.fish
        default:
            self._proteinId = TacoProtein.beef
            
        }
        switch condimentid {
        case 2:
            self._condimentid = TacoCondiment.plain
        default:
            self._condimentid = TacoCondiment.laoded
        }
        
        
    }
}
