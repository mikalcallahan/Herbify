//
//  CategoryViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 4/29/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // if categoryName != ""{
            categoryLabel.text = categoryName
       // }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let brandVC = segue.destination as? BrandViewController
            else {
                print("BrandViewController could not be instantiated from storyboard")
                return
        }
        
        switch (segue.identifier!) {
        case "kurvana":
            brandVC.brandName = "Kurvana"
        case "edibles":
            brandVC.brandName = "Edibles"
        case "flower":
            brandVC.brandName = "Flower"
        default:
            break
        }
    }
    
    var categoryName = "whoa"
    
    /*
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    */
    
    func openBrand(brand: String){
        guard let brandVC = storyboard?.instantiateViewController(withIdentifier: "brandViewController") as? BrandViewController
        else{
            print("BrandViewController could not be instantiated from storyboard")
            return
        }
        
        if brand != "null"{
            brandVC.brandName = brand
        }
        
        //brandVC.modalTransitionStyle = .coverVertical
        //show(brandVC, sender:true)
    }
    
    @IBAction func brandButton(_ sender: Any) {
        //print("TEST CAT")
        let brand = "brand a"
        openBrand(brand: brand)
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
