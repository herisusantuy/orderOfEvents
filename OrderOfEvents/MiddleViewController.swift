//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Heri Susanto on 28/02/21.
//  Copyright © 2021 Heri Susanto. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    @IBOutlet var label:UILabel!
    
    
    var eventNumber:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
         addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        addEvent(from: "viewDidDisappear")
    }
    
    func addEvent(from:String) {
        print("Haiii add event")
        if let existingText = label.text {
            label.text = "\(existingText)\n Event number \(eventNumber) was \(from)"
            eventNumber += 1
        }
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
