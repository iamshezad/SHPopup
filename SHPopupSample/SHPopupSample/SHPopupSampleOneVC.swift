//
//  SHPopupSampleOneVC.swift
//  SHPopupSample
//
//  Created by Focaloid Technologies on 13/12/17.
//  Copyright © 2017 Focaloid Technologies. All rights reserved.
//

import UIKit

protocol PopupSampleOneProtocol {
    func dismiss()
}

class SHPopupSampleOneVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var sampleCollectionView: UICollectionView!
    
    var sampleArray = [String]()
    var sampleOneDelegate: PopupSampleOneProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleArray = ["S","H","P","O","P","U","P"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return sampleArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleCollectionCell", for: indexPath) as! SHPopupCollectionCell
        cell.sampleLabel.text = sampleArray[indexPath.row]
        return cell
    }

    @IBAction func dismissAction(_ sender: UIButton) {
        sampleOneDelegate?.dismiss()
    }
}
