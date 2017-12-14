//
//  SHPopupSampleTwoVC.swift
//  SHPopupSample
//


import UIKit

class SHPopupSampleTwoVC: UIViewController {

   
    
    var sampleTwoDelegate: PopupSampleOneProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        sampleTwoDelegate?.dismiss()
    }
    @IBAction func okAction(_ sender: UIButton) {
        sampleTwoDelegate?.dismiss()
    }
}
