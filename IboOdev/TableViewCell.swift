//
//  TableViewCell.swift
//  IboOdev
//
//  Created by Asit Aslan on 13.02.2021.
//  Copyright © 2021 Asit Aslan. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var gorevButton: UIButton!
    @IBOutlet weak var capsuleView: UIView!
    @IBOutlet weak var capsuleview: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
        capsuleView.layer.cornerRadius = 12.0
        capsuleView.clipsToBounds = true
        gorevButton.layer.cornerRadius = 8.0
        gorevButton.clipsToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
