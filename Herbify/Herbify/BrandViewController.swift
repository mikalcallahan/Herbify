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

    override func viewDidLoad() {
        super.viewDidLoad()
        brandLabel.text = brandName

        // Do any additional setup after loading the view.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openProduct(product: String){
        guard let productVC = storyboard?.instantiateViewController(withIdentifier: "productViewController") as? ProductViewController
        else{
            print("ProductViewController could not be instantiated from storyboard")
            return
        }
        
        if product != "null"{
            print("test")
        }
        
        productVC.modalTransitionStyle = .coverVertical
        show(productVC, sender:true)
    }
    
    @IBAction func productButton(_ sender: Any) {
        let product = "product a"
        openProduct(product: product)
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
