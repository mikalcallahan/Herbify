//
//  ViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 4/27/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nav: UINavigationBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openCategory(category: String) {
        guard let categoryVC = storyboard?.instantiateViewController(withIdentifier: "categoryViewController") as? CategoryViewController
            else {
            print("CategoryViewController could not be instantiated from storyboard")
                return
        }
        
        if category != "null"{
            categoryVC.categoryName = category
        }
        
        categoryVC.modalTransitionStyle = .coverVertical
        show(categoryVC, sender:true)
    }
    
    @IBAction func concentrateButton(_ sender: Any) {
        let category = "Concentrates"
        openCategory(category: category)
    }
    
}

