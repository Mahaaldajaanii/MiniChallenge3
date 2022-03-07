//
//  DescriotionCell.swift
//  Challenge3 Maha
//
//  Created by Maha on 28/07/1443 AH.
//

import UIKit

class DescriotionCell: UITableViewCell {
    

    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var Chat: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
