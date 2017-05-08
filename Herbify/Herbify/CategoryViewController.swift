//
//  CategoryViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 4/29/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//  Manual segue from view controller to view controller
//  http://stackoverflow.com/questions/41886592/segue-and-button-programmatically-swift/41887007#41887007
//  http://stackoverflow.com/questions/9674685/creating-a-segue-programmatically
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var button1Object: UIButton!
    @IBOutlet weak var button2Object: UIButton!
    @IBOutlet weak var button3Object: UIButton!
    
    var categoryName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if categoryName != nil{
            changeLabel()
            getBrands()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // TODO: Currently breaks when selecting a brand (it's not programatic, it's storyboard)

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let brandVC = segue.destination as? BrandViewController
            else {
                print("BrandViewController could not be instantiated from storyboard")
                return
        }
    
        switch (segue.identifier!) {
        case "kurvana":
            brandVC.brandName = "Kurvana"
        case "spliffin":
            brandVC.brandName = "Spliffin"
        case "qOverQ":
            brandVC.brandName = "Quality Over Quality"
        default:
            break
        }
    }
    
    func changeLabel(){
        categoryLabel.text = categoryName
    }
    
    func getBrands(){
        switch (categoryName){
        case "Concentrates":
            concentrates()
        case "Edibles":
            edibles()
        case "Flower":
            flower()
        default:
            break
        }
    }
    
    func concentrates(){
        button1Object.setTitle("Kurvana", for: .normal)
        button2Object.setTitle("Spliffin", for: .normal)
        button3Object.setTitle("Quality Over Quantity", for: .normal)
    }
    
    func edibles(){
        
    }
    
    func flower(){
        
    }
    
    func openConcentrates(brandVC: BrandViewController){
        brandVC.brandName = "Concentrates"
    }
    
    func openEdibles(brandVC: BrandViewController){
        brandVC.brandName = "Edibles"
    }
    
    func openFlower(brandVC: BrandViewController){
        brandVC.brandName = "Flower"
    }

}
    /*
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    */
    /*
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
 */
