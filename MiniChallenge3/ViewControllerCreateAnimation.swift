//
//  ViewControllerCreateAnimation.swift
//  MiniChallenge3
//
//  Created by Khulood  on 13/08/1443 AH.
//

import UIKit
import Lottie


class ViewControllerCreateAnimation: UIViewController {
    
    @IBOutlet weak var CreateGroLable: UILabel!
    
    var animationView: AnimationView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView = .init(name: "CreateG")
        animationView?.frame = view.frame(forAlignmentRect: .init(x: -10, y: 100, width: 400, height: 400))
        animationView?.loopMode = .loop
        animationView?.animationSpeed = 0.5
        view.addSubview(animationView!)
        animationView?.play()
        view.sendSubviewToBack(animationView!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
