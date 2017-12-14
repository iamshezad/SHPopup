//
//  SHSamplePopupThreeVC.swift
//  SHPopupSample
//

import UIKit

class SHSamplePopupThreeVC: UIViewController {

    @IBOutlet var tickView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tickView.layer.cornerRadius = 50
        tickView.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
