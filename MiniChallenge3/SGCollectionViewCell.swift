//
//  SGCollectionViewCell.swift
//  HomePage
//
//  Created by Shahad Alkamli on 02/03/2022.
//

import UIKit

class SGCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var SGName: UILabel!
    @IBOutlet weak var MajorName: UILabel!
    @IBOutlet weak var Participants: UIImageView!
    @IBOutlet weak var ParticipantsNumber: UILabel!
    @IBOutlet weak var SeeMore: UIButton!
    
    
    
    func setupCell2(SGN:String, MN:String, P:UIImage, PN:String,See:String) {
        
        SGName.text = SGN
        MajorName.text = MN
        Participants.image = P
        ParticipantsNumber.text = PN
        SeeMore.buttonType
}
}

