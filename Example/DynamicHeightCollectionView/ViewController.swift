//
//  ViewController.swift
//  DynamicHeightCollectionView
//
//  Created by devOmar561 on 08/09/2021.
//  Copyright (c) 2021 devOmar561. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.width

class ViewController: UIViewController {

    /* MARK:- IBOutlet */
    @IBOutlet weak var heroCollectionView     : UICollectionView!
    @IBOutlet weak var productsCollectionView : UICollectionView!
    
    /* MARK:- Lazy Properties */
    lazy var heroCellNib: UINib = {
        return UINib(nibName: "HeroCell", bundle: nil)
    }()
    
    lazy var productsCellNib: UINib = {
        return UINib(nibName: "ProductsCell", bundle: nil)
    }()
    
    /* MARK:- Computed Properties */
    var heroCellSize: CGSize = {
        let height = SCREEN_WIDTH * 0.557971014492754
        return CGSize(width: SCREEN_WIDTH, height: height)
    }()
    
    var productCellSize: CGSize = {
        ///FORMULA = (Get collection view width respective of screen witdh) * Width of cell you want respective of collection view width
        let width  = (SCREEN_WIDTH * 0.922705314009662) * 0.31
        let height = width * 1.402137273183678
        return CGSize(width: width, height: height)
    }()
    
    /* MARK:- Properties */
    
    
    /* MARK:- Life Cycle */
    override func viewDidLoad() {
        super.viewDidLoad()
        initVC()
    }

}

/* MARK:- Methods */
extension ViewController {
    /// Initilizer method to get basic settings done
    func initVC(){
        setupCollectionViewLayouts()
        registerNib()
    }
    
    /// Method to setup collection view layouts
    func setupCollectionViewLayouts(){
        /// Creting Collection View Layouts
        let heroCVLayout                = UICollectionViewFlowLayout()
        heroCVLayout.minimumLineSpacing = 0.0
        heroCVLayout.scrollDirection    = .horizontal
        heroCVLayout.itemSize           = heroCellSize
        
        let productsCVLayout      = UICollectionViewFlowLayout()
        productsCVLayout.itemSize = productCellSize
        
        /// Assigning Collection View Layouts
        heroCollectionView.collectionViewLayout     = heroCVLayout
        productsCollectionView.collectionViewLayout = productsCVLayout
    }
    
    /// Method to register nibs
    func registerNib(){
        heroCollectionView.register(
            heroCellNib,
            forCellWithReuseIdentifier: "heroCell"
        )
        
        productsCollectionView.register(
            productsCellNib,
            forCellWithReuseIdentifier: "productsCell"
        )
    }
}


/* MARK:- CollectionView */

/// DATASOURCE
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == heroCollectionView {
            return 4
        } else {
            return 50
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        
        if collectionView == heroCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "heroCell", for: indexPath)
            
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productsCell", for: indexPath)
            
            return cell
        }
        
    }
}
