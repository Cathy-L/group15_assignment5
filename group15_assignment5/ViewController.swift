//
//  ViewController.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/2/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
            //3
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                             withReuseIdentifier: "HeaderReusableView",
                                                                             for: indexPath) as! HeaderFooterCollectionReusableView
            headerView.headerLabel.text = "Hello"
            return headerView
        default:
            //4
            assert(false, "Unexpected element kind")
        }
    }
    
    /*-- func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionElementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "HeaderReusableView", for: indexPath) as! HeaderFooterCollectionReusableView
            
            
            headerView.headerLabel.text = "Hello"
            return headerView
            
            
        default:  fatalError("Unexpected element kind")
        }
    } --*/
    


}

/*-- MARK: - UICollectionViewDataSource
extension ViewController {
     func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
        //1
        switch kind {
        //2
        case UICollectionElementKindSectionHeader:
            //3
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                             withReuseIdentifier: "HeaderReusableView",
                                                                             for: indexPath) as! HeaderFooterCollectionReusableView
            headerView.headerLabel.text = "Hello"
            return headerView
        default:
            //4
            assert(false, "Unexpected element kind")
        }
    }
    
}--*/


