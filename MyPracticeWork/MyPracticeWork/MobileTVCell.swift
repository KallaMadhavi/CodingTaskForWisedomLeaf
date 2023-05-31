//
//  MobileTVCell.swift
//  MyPracticeWork
//
//  Created by Madhavi on 31/05/23.
//

import UIKit

class MobileTVCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var mobilName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
