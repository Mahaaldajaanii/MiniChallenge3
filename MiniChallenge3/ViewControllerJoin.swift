//
//  ViewControllerJoin.swift
//  MiniChallenge3
//
//  Created by Khulood  on 13/08/1443 AH.
//

import UIKit

class ViewControllerJoin: UIViewController {
    
    @IBOutlet weak var topImage: UIImageView!
    
    @IBOutlet weak var desTit: UILabel!
    
    @IBOutlet weak var fullDes: UILabel!
    
    @IBOutlet weak var groDes: UILabel!
    
    @IBOutlet weak var CalIma: UIImageView!
    
    @IBOutlet weak var CalDes: UILabel!
    
    @IBOutlet weak var LocIma: UIImageView!
    
    @IBOutlet weak var LocDes: UILabel!
    
    @IBOutlet weak var ParDes: UILabel!
    
    @IBOutlet weak var ParIma: UIImageView!
    
    @IBOutlet weak var ByDes: UILabel!
    
    @IBOutlet weak var ByIma: UIImageView!
    
    @IBOutlet weak var JoinButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        //        var elements = [UIAccessibilityElement]()
        //        var groupedElement = UIAccessibilityElement(accessibilityContainer: self)
        //
        //
        //       groupedElement.accessibilityLabel = "\(CalIma!), \(CalDes!)"
        //
        //        groupedElement.accessibilityLabel = "image of .. and title of .."
        //
        //        groupedElement.accessibilityHint = "the hint is..."
        //
        //
        //        groupedElement.accessibilityFrameInContainerSpace = CalIma.frame.union(CalDes.frame)
        //
        //
              
             // elements.append(groupedElement)
        
        topImage.isAccessibilityElement = true
        topImage.accessibilityLabel = "Header image of this study group"
        topImage.accessibilityHint = "The hint is. this is the Study Group Image"

        
        desTit.isAccessibilityElement = true
        desTit.accessibilityLabel = "Software Engineering"
        desTit.accessibilityHint = "The hint is. This is the subject of this study group"
        
        fullDes.isAccessibilityElement = true
        fullDes.accessibilityLabel = "Description"
        fullDes.accessibilityHint = "The hint is. This is the description lable of this study group"
        
        groDes.isAccessibilityElement = true
        groDes.accessibilityLabel = "In this study group we will discuss chapter 3 "
        groDes.accessibilityHint = "The hint is. This is the description of what will be discuss in this study group"
        
        CalIma.isAccessibilityElement = true
        CalIma.accessibilityLabel = "Calnder symbol "
        CalIma.accessibilityHint = "This is a symbol of a calnder"
        
        CalDes.isAccessibilityElement = true
        CalDes.accessibilityLabel = "Sunday, March 15, 2022 at 1:00 PM"
        CalDes.accessibilityHint = "The hint is. This is the date and time of this study group"
        
        LocIma.isAccessibilityElement = true
        LocIma.accessibilityLabel = "Location symbol "
        LocIma.accessibilityHint = "This is a symbol of a location"
        
        LocDes.isAccessibilityElement = true
        LocDes.accessibilityLabel = "Central Library ,second floor"
        LocDes.accessibilityHint = "The hint is. This is the location of this study group"
        
        ParDes.isAccessibilityElement = true
        ParDes.accessibilityLabel = "Participants"
        ParDes.accessibilityHint = "The hint is. This is the Participants lable"
        
        ParIma.isAccessibilityElement = true
        ParIma.accessibilityLabel = "Participants"
        ParIma.accessibilityHint = "The hint is. This is the Participants who join this study group"
        
        ByDes.isAccessibilityElement = true
        ByDes.accessibilityLabel = "By"
        ByDes.accessibilityHint = "The hint is. This is the by lable"
        
        ByIma.isAccessibilityElement = true
        ByIma.accessibilityLabel = "By"
        ByIma.accessibilityHint = "The hint is. This is the person who create this study group"
        
        JoinButton.isAccessibilityElement = true
        JoinButton.accessibilityLabel = "Join button"
        JoinButton.accessibilityHint = "The hint is. Click here to join this study group"
        
        
        
        
        
        
                
//                CalDes.isAccessibilityElement = true
//
//                var elements = [UIAccessibilityElement]()
//                let groupedElement = UIAccessibilityElement(accessibilityContainer: self)
//                groupedElement.accessibilityLabel = "Par, \(CalDes.text!)"
//                groupedElement.accessibilityFrameInContainerSpace = ParIma.frame.union(ParDes.frame)
//                elements.append(groupedElement)

        // Do any additional setup after loading the view.
    }

    

    @IBAction func OnClickJoin(_ sender: Any) {
    }
    

}
