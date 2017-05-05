//
//  ViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 4/27/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet weak var nav: UINavigationBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let categoryVC = segue.destination as? CategoryViewController
            else {
                print("CategoryViewController could not be instantiated from storyboard")
                return
        }

    switch (segue.identifier!) {
        case "concentrates":
            categoryVC.categoryName = "Concentrates"
        case "edibles":
            categoryVC.categoryName = "Edibles"
        case "flower":
            categoryVC.categoryName = "Flower"
        default:
            break
        }
    }
            /*
        let navVC = segue.destination as? UINavigationController
            print("rawr")
        let categoryVC = CategoryViewController()
            categoryVC.categoryName = "Concentrates"
        }
        if segue.identifier == "concentrates" {
            let category = "Concentrates"
            openCategory(category: category)
             */
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let navVC = segue.destination as? UINavigationController
        
        let tableVC = navVC?.viewControllers.first as! YourTableViewCon//trollerClass
        
        tableVC.yourTableViewArray = localArrayValue
    }
    */
    func openCategory(category: String) {
        print(category)
        /*
        guard let categoryVC = storyboard?.instantiateViewController(withIdentifier: "categoryViewController") as? CategoryViewController
            else {
            print("CategoryViewController could not be instantiated from storyboard")
                return
        }*/
        /*
        if category != "null"{
            //categoryVC.categoryName = category
            categoryVC.categoryLabel.text = category
        }
        */
        //categoryVC.modalTransitionStyle = .coverVertical
        //show(categoryVC, sender:true)
    }
    /*
    @IBAction func concentrates(_ sender: Any) {
        print("HOME")
        let category = "Concentrates"
        openCategory(category: category)
    }
 */
    /*
    @IBAction func concentrateButton(_ sender: Any) {
        print("HOME")
        let category = "Concentrates"
        openCategory(category: category)
    }
 */
    
}
