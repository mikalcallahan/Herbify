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
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var button1Object: UIButton!
    @IBOutlet weak var button2Object: UIButton!
    @IBOutlet weak var button3Object: UIButton!
    @IBOutlet weak var button1Image: UIImageView!
    @IBOutlet weak var button2Image: UIImageView!
    @IBOutlet weak var button3Image: UIImageView!
    
    var categoryName: String!
    private var brand: String!
    
    
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let brandVC = segue.destination as? BrandViewController
            else {
                print("BrandViewController could not be instantiated from storyboard")
                return
        }
        switch (brand){
        case "Kurvana":
            brandVC.brandName = "Kurvana"
        case "Spliffin":
            brandVC.brandName = "Spliffin"
        case "Jetty Extracts":
            brandVC.brandName = "Jetty Extracts"
        case "Presidential RX":
            brandVC.brandName = "Presidential RX"
        case "Sensi Chew":
            brandVC.brandName = "Sensi Chew"
        case "Cheeba Chew":
            brandVC.brandName = "Cheeba Chew"
        default:
            break
        }
    }
    /*
         
        switch (segue.identifier!) {
        case "kurvana":
            brandVC.brandName = "Kurvana"
        case "spliffin":
            brandVC.brandName = "Spliffin"
        case "jetty":
            brandVC.brandName = "Jetty Extracts"
        default:
            break
        }
    */
    
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
        button1Image.image = #imageLiteral(resourceName: "kurvanalogo.png")
        button2Object.setTitle("Spliffin", for: .normal)
        button2Image.image = #imageLiteral(resourceName: "spliffin.png")
        button3Object.setTitle("Jetty Extracts", for: .normal)
        button3Image.image = #imageLiteral(resourceName: "jetty_logo.jpg")
    }
    
    func edibles(){
        button1Object.setTitle("Sensi Chew", for: .normal)
        button1Image.image = #imageLiteral(resourceName: "sensichewlogobw.png")
        button2Object.setTitle("Cheeba Chew", for: .normal)
        //button2Image.image = #imageLiteral(resourceName: "cheebachewlogo.png")
        button2Image.image = #imageLiteral(resourceName: "cheebachewnew.png")
        button3Object.removeFromSuperview()
    }
    
    func flower(){
        button1Object.setTitle("Presidential RX", for: .normal)
        button1Image.image = #imageLiteral(resourceName: "presidentiallogobw.png")
        button2Object.removeFromSuperview()
        button3Object.removeFromSuperview()
    }
    
    @IBAction func button1(_ sender: Any) {
        //brand = button1Object.titleLabel?.text
        
        if let buttonName = button1Object.titleLabel?.text{
            brand = buttonName
        }
        self.performSegue(withIdentifier: "categoryToBrand", sender: self)
    }
    
    @IBAction func button2(_ sender: Any) {
        if let buttonName = button2Object.titleLabel?.text{
            brand = buttonName
        }
        self.performSegue(withIdentifier: "categoryToBrand", sender: self)
    }
    
    @IBAction func button3(_ sender: Any) {
        if let buttonName = button3Object.titleLabel?.text{
            brand = buttonName
        }
        self.performSegue(withIdentifier: "categoryToBrand", sender: self)
    }

}

/*
 func openConcentrates(brandVC: BrandViewController){
 brandVC.brandName = "Concentrates"
 }
 
 func openEdibles(brandVC: BrandViewController){
 brandVC.brandName = "Edibles"
 }
 
 func openFlower(brandVC: BrandViewController){
 brandVC.brandName = "Flower"
 }
 */
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
