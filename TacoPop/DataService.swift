//
//  DataService.swift
//  TacoPop
//
//  Created by Kanishk Verma on 23/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import Foundation

protocol DataServiceDelegate:class {
    func deleciousTacoDataLoaded()
}

class DataService {
    static let instance = DataService()
    
    weak var delegate: DataServiceDelegate?
    
    var tacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        // Chicken Tacos
        tacoArray.append(Taco(id: 1, productname: "Loaded Flour Chicken Taco", shellId: 1, proteinid: 2, condimentid: 1))
        tacoArray.append(Taco(id: 2, productname:"Loaded Corn Chicken Taco", shellId: 2, proteinid: 2, condimentid: 1))
        tacoArray.append(Taco(id: 3, productname: "Plain Flour Chicken Taco", shellId: 1, proteinid: 2, condimentid: 2))
        tacoArray.append(Taco(id: 4, productname: "Plain Corn Chicken Taco", shellId: 2, proteinid: 2, condimentid: 2))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 5, productname: "Loaded Flour Beef Taco", shellId: 1, proteinid: 1, condimentid: 1))
        tacoArray.append(Taco(id: 6, productname: "Loaded Corn Beef Taco", shellId: 2, proteinid: 1, condimentid: 1))
        tacoArray.append(Taco(id: 7, productname: "Plain Flour Beef Taco", shellId: 1, proteinid: 1, condimentid: 2))
        tacoArray.append(Taco(id: 8, productname: "Plain Corn Beef Taco", shellId: 2, proteinid: 1, condimentid: 2))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 9, productname: "Loaded Flour Brisket Taco", shellId: 1, proteinid: 3, condimentid: 1))
        tacoArray.append(Taco(id: 10, productname: "Loaded Corn Brisket Taco", shellId: 2, proteinid: 3, condimentid: 1))
        tacoArray.append(Taco(id: 11, productname: "Plain Flour Brisket Taco", shellId: 1, proteinid: 3, condimentid: 2))
        tacoArray.append(Taco(id: 12, productname: "Plain Corn Brisket Taco", shellId: 2, proteinid: 3, condimentid: 2))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 13, productname: "Loaded Flour Fish Taco", shellId: 1, proteinid: 4, condimentid: 1))
        tacoArray.append(Taco(id: 14, productname: "Loaded Corn Fish Taco", shellId: 2, proteinid: 4, condimentid: 1))
        tacoArray.append(Taco(id: 15, productname: "Plain Flour Fish Taco", shellId: 1, proteinid: 4, condimentid: 2))
        tacoArray.append(Taco(id: 16, productname: "Plain Corn Fish Taco", shellId: 2, proteinid: 4, condimentid: 2))
        
        delegate?.deleciousTacoDataLoaded()
    }

}
