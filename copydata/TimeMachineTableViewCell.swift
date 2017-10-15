//
//  TimeMachineTableViewCell.swift
//  copydata
//
//  Created by Sanjay Ediga on 15/10/17.
//  Copyright © 2017 copydata. All rights reserved.
//

import UIKit

class TimeMachineTableViewCell: UITableViewCell {
    // MARK: Properties
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var size: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
