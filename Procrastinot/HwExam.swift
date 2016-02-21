//
//  HwExam.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class HwExam: UITableViewCell {
    
    @IBOutlet weak var hwOrExam: UILabel!

    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var nameofAssignment: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
