//
//  ViewController.swift
//  DoubleTap
//
//  Created by George McKinney on 3/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var targetView: UIView!
    @IBOutlet var image01: UIImageView! {
        image01.isUserInteractionEnabled = true
        image01.image = UIImage(named: "CreateNewProject.png")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let doubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.doubleTapped(_:)))
        targetView.isUserInteractionEnabled = true
        image01.isUserInteractionEnabled = true
        let doubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target:self,action: Selector( "doubleTapped"))
        
        doubleTap.numberOfTapsRequired = 2
        doubleTap.numberOfTouchesRequired = 2
        
        targetView.addGestureRecognizer(doubleTap)
        
//        self.image01.addGestureRecognizer(doubleTap)
//        self.image01.isUserInteractionEnabled = true
    }
    
    @IBAction func doubleTapped(_ sender: Any) {
        print("double tapped")
    }
    @IBAction func touchCallback(recognizer: UITapGestureRecognizer? = nil){
        if(recognizer?.state == UIGestureRecognizer.State.ended){
            print("double tapped")
        }
    }


}

