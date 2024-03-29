//
//  BrandViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 5/1/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class BrandViewController: UIViewController {
    
    @IBOutlet weak var brandLabel: UILabel!
    var brandName = ""

    @IBAction func brandA(_ sender: Any) {
        self.performSegue(withIdentifier: "brandToProduct", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brandLabel.text = brandName

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
    
    func openConcentrates(brandVC: CategoryViewController){
        brandVC.categoryName = "Concentrates"
    }
    
    func openEdibles(brandVC: CategoryViewController){
        brandVC.categoryName = "Edibles"
    }
    
    func openFlower(brandVC: CategoryViewController){
        brandVC.categoryName = "Flower"
    }
    
}

    /*
    func openProduct(product: String){
        guard let productVC = storyboard?.instantiateViewController(withIdentifier: "productViewController") as? ProductViewController
        else{
            print("ProductViewController could not be instantiated from storyboard")
            return
        }
        
        if product != "null"{
            print(product)
            productVC.productName = product
            //print("test")
        }
        else{
            print("TesT")
        }
        
        //productVC.modalTransitionStyle = .coverVertical
        //show(productVC, sender:true)
    }
    
    @IBAction func productButton(_ sender: Any) {
        print("PRINT BRAND")
        let product = "product a"
        openProduct(product: product)
    }
*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
