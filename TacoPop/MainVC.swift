//
//  ViewController.swift
//  TacoPop
//
//  Created by Kanishk Verma on 23/08/17.
//  Copyright © 2017 Kanishk Verma. All rights reserved.
//

import UIKit

class MainVC: UIViewController,DataServiceDelegate {

    @IBOutlet weak var headerView:HeaderView!
    @IBOutlet weak var collectionview:UICollectionView!
    
    var ds:DataService = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ds.delegate  = self
        ds.loadDeliciousTacoData()
        headerView.addDropShadow()
        
        collectionview.delegate = self
        collectionview.dataSource = self
        
        /*
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionview.register(nib, forCellWithReuseIdentifier: "TacoCell")
        */
        
        collectionview.register(TacoCell.self)
        
       
    }

    func deleciousTacoDataLoaded() {
        print("the data is loaded now \n")
        collectionview.reloadData()
    }
   
}
extension MainVC:UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionview.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configurecell(taco: ds.tacoArray[indexPath.row])
        return cell
            
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let cell = collectionview.cellForItem(at: indexPath) as?TacoCell {
            cell.shake()
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
}
    
    

