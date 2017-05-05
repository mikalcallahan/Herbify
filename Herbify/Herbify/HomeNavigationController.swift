//
//  HomeNavigationController.swift
//  Herbify
//
//  Created by Mikal Callahan on 5/2/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class HomeNavigationController: UINavigationController {
    @IBOutlet weak var navBar: UINavigationBar!

    override func viewDidLoad() {
    
        super.viewDidLoad()
        //print("TESTING")
       // navBar.title = "Herbify"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*  Segue prep */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("YOOO00")
        if segue.identifier == "concentrates" {
           // let category = "Concentrates"
          //  openCategory(category: category)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
