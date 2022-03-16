//
//  ViewControllerCreate.swift
//  MiniChallenge3
//
//  Created by Khulood  on 13/08/1443 AH.
//

import UIKit

class CellClass: UITableViewCell {
}

class ViewControllerCreate: UIViewController, UIStepperControllerDelegate {
    
    @IBOutlet weak var studyGroupTitle: UITextField! //TextFieldFloatingPlaceholder!
    
    @IBOutlet weak var studyGroupDes: UITextField!
    
    @IBOutlet weak var studyGroupLocation: UITextField!
    
    @IBOutlet weak var studentCount: UIStepperController!
    
    @IBOutlet weak var majorSelectbutton: UIButton!
    
    @IBOutlet weak var subjectSelectbutton: UIButton!
    
    @IBOutlet weak var MainDateTime: UILabel!
    
    let transparentView = UIView()
    let tableView = UITableView()
    
    var selectedButton = UIButton()
    var dataSource = [String]()
    var mydata = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CellClass.self, forCellReuseIdentifier: "Cell")

        MainDateTime.text = mydata
        
        
        //Textfield for title
        let bottomLine = CALayer()
//
//bottomLine.frame = CGRect(x: 0, y: studyGroupTitle.frame.height - 2, width: studyGroupTitle.frame.width, height: 2)
//
        bottomLine.backgroundColor = UIColor.init(named: "Yellow")?.cgColor //black.cgColor//init(named: "Yellow")?.cgColor

        studyGroupTitle.borderStyle = .line
        studyGroupTitle.layer.addSublayer(bottomLine)
        
        

        
        //custom textfiled
        
        //studyGroupTitle.borderStyle = .roundedRect
        //studyGroupTitle.floatingPlaceholderColor = UIColor.red.withAlphaComponent(1)
        //studyGroupTitle.floatingPlaceholderMinFontSize = 10
        //studyGroupTitle.validation = { $0.count > 100 }
        //studyGroupTitle.validationFalseLineEditingColor = .blue
        //studyGroupTitle.validationTrueLineEditingColor = .yellow
        //studyGroupTitle.borderStyle = .roundedRect
        //studyGroupTitle.validationFalseLineColor = .brown
        //studyGroupTitle.validationTrueLineColor = .blue
        
        //viewTap.addTarget(self, action: #selector(ViewController.tap))
        
        
        
        
        //Textfield for descrption
        let bottomLine2 = CALayer()
        
        //bottomLine2.frame = CGRect(x: 0, y: studyGroupDes.frame.height - 2, width: studyGroupDes.frame.width, height: 2)
        
        bottomLine2.backgroundColor = UIColor.init(named: "Yellow")?.cgColor
        
        studyGroupDes.borderStyle = .none
        studyGroupDes.layer.addSublayer(bottomLine2)
        
        
        //Textfield for location
        let bottomLine3 = CALayer()
        
        //bottomLine3.frame = CGRect(x: 0, y: studyGroupLocation.frame.height - 2, width: studyGroupLocation.frame.width, height: 2)
        
        bottomLine3.backgroundColor = UIColor.init(named: "Yellow")?.cgColor
        
        studyGroupLocation.borderStyle = .none
        studyGroupLocation.layer.addSublayer(bottomLine3)
        
        
        //stepper
        self.studentCount.delegate = self // Assign instance delegate to UIStepperControllerDelegate
        self.studentCount.tag = 10001
        // Assign tag to Identify UIStepperController
        self.view.addSubview(studentCount);

        // Do any additional setup after loading the view.
    }
    
    @objc func tap() {
        studyGroupTitle.endEditing(true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stepperDidAddValues(stepper: UIStepperController) {
        switch stepper.tag {
        case 10001:
            print("Stepper 10001 value did change (Add) : \(stepper.count)")
            break
            
        default:
            break
        }
    }
    
    func stepperDidSubtractValues(stepper: UIStepperController) {
        switch stepper.tag {
        case 10001:
            print("Stepper 10001 value did change (Subtract) : \(stepper.count)")
            break
            
        default:
            break
        }
    }
    

    @IBAction func joinButton(_ sender: Any) {
    }
    
    
    @IBAction func calButton(_ sender: UIStoryboardSegue) {
        MainDateTime.text = mydata

    }
    
    
    
    
    func addTransparentView(frames: CGRect) {
        let window = UIApplication.shared.keyWindow
        transparentView.frame = window?.frame ?? self.view.frame
        self.view.addSubview(transparentView)
                                   
        tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
        self.view.addSubview(tableView)
        tableView.layer.cornerRadius = 5
                                   
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        tableView.reloadData()
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(removeTransparentView))
        transparentView.addGestureRecognizer(tapgesture)
        transparentView.alpha = 0
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
        self.transparentView.alpha = 0.5
        self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height + 10, width: frames.width, height: CGFloat(self.dataSource.count * 50))
                                   }, completion: nil)
                               }

    
    @objc func removeTransparentView() {
        let frames = selectedButton.frame
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
        self.transparentView.alpha = 0
        self.tableView.frame = CGRect(x: frames.origin.x, y: frames.origin.y + frames.height, width: frames.width, height: 0)
                                   }, completion: nil)
                               }
    
    
    @IBAction func onClickMajorBitton(_ sender: Any) {
        
        dataSource = [NSLocalizedString("IT", comment: ""), NSLocalizedString("Managment", comment: ""), NSLocalizedString("Business", comment: "")]
                 selectedButton = majorSelectbutton
                 addTransparentView(frames: majorSelectbutton.frame)
    }
    
    @IBAction func onClickSubjectBitton(_ sender: Any) {
        
        dataSource = ["Computer Programming 1", "Operating System", "Software Engineering"]
                selectedButton = subjectSelectbutton
        addTransparentView(frames: subjectSelectbutton.frame)
    }
    
    
}

extension ViewControllerCreate: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
                           }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataSource[indexPath.row]
        
        cell.textLabel?.font  = UIFont.systemFont(ofSize: 20)
        return cell
                           }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
                           }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        selectedButton.setTitle(dataSource[indexPath.row], for: .normal)
        removeTransparentView()
                               
                              
                           }
    



}
