//
//  ViewController.swift
//  HomePage
//
//  Created by Shahad Alkamli on 24/02/2022.
//

import UIKit


class ViewControllerHome: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var PNU: UILabel!
    @IBOutlet weak var IT: UILabel!
    @IBOutlet weak var PNUlogo: UIImageView!
    @IBOutlet weak var StudyGroups: UILabel!
    @IBOutlet weak var SeeAll: UIButton!
    @IBOutlet weak var ready: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    @IBOutlet weak var timerView: UIView!
    
    
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    
    @IBOutlet weak var Hours: UILabel!
    @IBOutlet weak var Minutes: UILabel!
    @IBOutlet weak var Seconds: UILabel!
    
    
    
    
    var timer: Timer!
    
    
    // First Array
    
    var arrGroups = [studyGroups]()
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
        
        studentName.text = NSLocalizedString("Sara Ahmed", comment: "")
        IT.text = NSLocalizedString("Information Tencholgy", comment: "")
        
        StudyGroups.text = NSLocalizedString("Study Groups", comment: "")
        
        
        SeeAll.titleLabel?.text = NSLocalizedString("See All", comment: "")
        
        ready.text = NSLocalizedString("Ready for next study group?", comment: "")
        
        Hours.text = NSLocalizedString("Hours", comment: "")
        
        Minutes.text = NSLocalizedString("Minutes", comment: "")
        
        Seconds.text = NSLocalizedString("Seconds", comment: "")
        
        
        // Array Append
        arrGroups.append(
            studyGroups(GroupName: NSLocalizedString("Software Engineering", comment: ""),
                        CalendarIcon: UIImage(systemName: "calendar")!,
                        Date: NSLocalizedString("Sun 12/6/2022",comment:""),
                        TimeIcon: UIImage(systemName:"clock")!,
                        Time:NSLocalizedString("2-3 PM",comment:"") ))
        arrGroups.append(
            studyGroups(GroupName: NSLocalizedString("Database Management", comment: ""),
                        CalendarIcon: UIImage(systemName:"calendar")!,
                        Date:NSLocalizedString("Tue 14/6/2022",comment:""),
                        TimeIcon: UIImage(systemName:"clock")!,
                        Time: "8-10 AM"))
        arrGroups.append(
            studyGroups(GroupName: NSLocalizedString("Networks Fundamentals",comment: ""),
                        CalendarIcon: UIImage(systemName:"calendar")!,
                        Date: NSLocalizedString("Wed 15/6/2022",comment:""),
                        TimeIcon: UIImage(systemName:"clock")!,
                        Time: NSLocalizedString("12-2 PM", comment:"")))
        
        arrGroups.append(
            studyGroups(GroupName: NSLocalizedString(" Operating System",comment: ""),
                        CalendarIcon: UIImage(systemName:"calendar")!,
                        Date: NSLocalizedString("Wed 15/6/2022",comment:""),
                        TimeIcon: UIImage(systemName:"clock")!,
                        Time: NSLocalizedString("9-11 AM", comment:"")))
        
        
        
        timerView.layer.cornerRadius = 20;
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTime), userInfo: nil, repeats: true)
        
        
    } // end of viewDidLoad
    
    
    @IBAction func SeeAll(_ sender: Any) {
    }
    @IBAction func addButton(_ sender: Any) {
    }
    
    
    
    // CollectionView Functions
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrGroups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCollectionViewCell
        
        let data = arrGroups[indexPath.row]
        cell.setupCell(GroupName: data.GroupName, CalendarIcon: data.CalendarIcon, Date: data.Date, TimeIcon: data.TimeIcon, Time: data.Time)
        cell.backgroundColor = UIColor.white
        cell.layer.cornerRadius = 15.0
        return cell
        
    }
    
    
    
    
    
    struct studyGroups {
        
        let GroupName : String
        let CalendarIcon : UIImage
        let Date : String
        let TimeIcon : UIImage
        let Time : String
        
    }
    
    
    
    
    @objc func UpdateTime() {
        let userCalendar = Calendar.current
        // Set Current Date
        let date = Date()
        let components = userCalendar.dateComponents([.hour, .minute, .second], from: date)
        let currentDate = userCalendar.date(from: components)!
        
        // Set Event Date
        var eventDateComponents = DateComponents()
        eventDateComponents.year = 2022
        eventDateComponents.month = 01
        eventDateComponents.day = 01
        eventDateComponents.hour = 00
        eventDateComponents.minute = 00
        eventDateComponents.second = 00
        eventDateComponents.timeZone = TimeZone(abbreviation: "GMT")
        
        // Convert eventDateComponents to the user's calendar
        let eventDate = userCalendar.date(from: eventDateComponents)!
        
        // Change the seconds to days, hours, minutes and seconds
        let timeLeft = userCalendar.dateComponents([.day, .hour, .minute, .second], from: currentDate, to: eventDate)
        
        // Display Countdown
        hoursLabel.text = "\(timeLeft.hour!)"
        
        minutesLabel.text = "\(timeLeft.minute!)"
        
        secLabel.text = "\(timeLeft.second!)"
        
        
    }
    
}


