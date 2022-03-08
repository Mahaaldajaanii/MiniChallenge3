//
//  GroupCollectionViewCell.swift
//  HomePage
//
//  Created by Shahad Alkamli on 28/02/2022.
//

import UIKit

class GroupCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var GrpName: UILabel!
    
    @IBOutlet weak var CalIcon: UIImageView!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var TIcon: UIImageView!
    @IBOutlet weak var time: UILabel!
   
    
    
    func setupCell(GroupName:String, CalendarIcon:UIImage, Date:String, TimeIcon:UIImage,Time:String) {
        
        GrpName.text = GroupName
        CalIcon.image = CalendarIcon
        date.text = Date
        TIcon.image = TimeIcon
        time.text = Time
        

}
}


