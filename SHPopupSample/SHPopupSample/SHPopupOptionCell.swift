//
//  SHPopupOptionCell.swift
//  SHPopupSample
//
//  Created by Focaloid Technologies on 13/12/17.
//  Copyright © 2017 Focaloid Technologies. All rights reserved.
//

import UIKit

class SHPopupOptionCell: UITableViewCell {

    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var selectionImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
