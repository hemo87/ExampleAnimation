//
//  CollectionViewController.swift
//  ExampleAnimation
//
//  Created by Marc Heminsley on 08/04/2019.
//  Copyright © 2019 MarcHeminsley. All rights reserved.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    var isFlipped = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("here")
        self.isFlipped.toggle()
        let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        
        let transitionOptions: UIView.AnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: cell, duration: 1.0, options: transitionOptions, animations: {
            print("in animation")
            cell.redView.alpha = self.isFlipped ? 1 : 0
            
        })
    }
}
