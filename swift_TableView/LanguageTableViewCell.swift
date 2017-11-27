//
//  LanguageTableViewCell.swift
//  swift_TableView
//
//  Created by soyoung on 2017. 11. 27..
//  Copyright © 2017년 Administrator. All rights reserved.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {

    @IBOutlet weak var lblLanguage: UILabel!
    @IBOutlet weak var lblKeyboardType: UILabel!
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var btnRightArrow: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func btnArrowRight(_ sender: UIButton) {
    }
    
}
