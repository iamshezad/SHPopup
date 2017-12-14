//
//  SHPopupMainVC.swift
//  SHPopupSample
//


import UIKit

class SHPopupMainVC: UIViewController,UITableViewDelegate,UITableViewDataSource,PopupSampleOneProtocol{

    @IBOutlet weak var popupCategoryTableView: UITableView!
    
    var popupAlignmentArray = [String]()
    var popupAnimationArray = [String]()
    var popupAlignmentType: SHPopupAlign?
    var popupAnimationType: SHPopupAnimation?
    var alignmentSelected: Int = 0
    var animationSelected: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Popup Options array
        popupAlignmentArray = [".top",".center",".bottom",".custom"]
        popupAnimationArray = [".none",".top",".bottom",".topBounce",".bottomBounce"]
        
        //By Default
        popupAlignmentType = .center
        popupAnimationType = .bottom
        
        popupCategoryTableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 3
        }
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Popup Alignment options"
        }
        return "Popup Animation options"
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView =  UIView.init(frame: CGRect(x:0, y:0, width:self.view.frame.size.width, height:30))
        headerView.backgroundColor = UIColor.white
        let label: UILabel? = UILabel(frame: CGRect(x:10, y:0, width:200, height:30))
        label!.textAlignment = .left
        label?.textColor = UIColor(red: 42.0/255.0, green: 42.0/255.0, blue: 50.0/255.0, alpha: 0.9)
        label?.font = UIFont(name: "Futura-Medium", size: 16)
        if section == 0 {
            label?.text = "Popup Alignment options"
        }
        label?.text = "Popup Animation options"
        
        headerView.addSubview(label!)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "popupOptionsCell", for: indexPath) as! SHPopupOptionCell
        if indexPath.section == 0 {
            cell.optionLabel.text = popupAlignmentArray[indexPath.row]
            if alignmentSelected == indexPath.row {
                cell.selectionImage.image = #imageLiteral(resourceName: "ic_check")
            }else{
                cell.selectionImage.image = nil
            }
        }else{
            cell.optionLabel.text = popupAnimationArray[indexPath.row]
            if animationSelected == indexPath.row {
                cell.selectionImage.image = #imageLiteral(resourceName: "ic_check")
            }else{
                cell.selectionImage.image = nil
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            alignmentSelected = indexPath.row
        }else{
            animationSelected = indexPath.row
        }
        popupCategoryTableView.reloadData()
    }
    @IBAction func showPopAction(_ sender: UIButton) {
        switch alignmentSelected {
        case 0:
            popupAlignmentType = .top
        case 1:
            popupAlignmentType = .center
        case 2:
            popupAlignmentType = .bottom
        default:
            popupAlignmentType = .center
        }
        switch animationSelected {
        case 0:
            popupAnimationType = .normal
        case 1:
            popupAnimationType = .top
        case 2:
            popupAnimationType = .bottom
        case 3:
            popupAnimationType = .topBounce
        case 4:
            popupAnimationType = .bottomBounce
        default:
             popupAnimationType = .bottom
        }
        switch animationSelected {
        case 0:
            let popupVC = setPopupVC(storyboradID: "Main", viewControllerID: "SHPopupSampleOneVC") as? SHPopupSampleOneVC
            popupVC?.sampleOneDelegate = self
            popupVC?.popupAlign = popupAlignmentType
            popupVC?.popupAnimation = popupAnimationType
            popupVC?.touchDismiss = true
            popupVC?.popupSize = CGSize(width: view.frame.width, height: 260)
            self.presentPopup(controller: popupVC!, completion: nil)
        case 1,2:
            let popupVC = setPopupVC(storyboradID: "Main", viewControllerID: "SHSamplePopupThreeVC") as? SHSamplePopupThreeVC
            popupVC?.popupAlign = popupAlignmentType
            popupVC?.popupAnimation = popupAnimationType
            popupVC?.touchDismiss = true
            popupVC?.popupSize = CGSize(width: view.frame.width-40, height: 200)
            self.presentPopup(controller: popupVC!, completion: nil)
        default:
            let popupVC = setPopupVC(storyboradID: "Main", viewControllerID: "SHPopupSampleTwoVC") as? SHPopupSampleTwoVC
            popupVC?.sampleTwoDelegate = self
            popupVC?.popupAlign = popupAlignmentType
            popupVC?.popupAnimation = popupAnimationType
            popupVC?.touchDismiss = true
            popupVC?.popupSize = CGSize(width: view.frame.width-40, height: 350)
            self.presentPopup(controller: popupVC!, completion: nil)
        }
       
    }
    
    func dismiss() {
        self.dismissPopup(completion: nil)
    }
}
