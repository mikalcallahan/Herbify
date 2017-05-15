
//
//  BrandViewController.swift
//  Herbify
//
//  Created by Mikal Callahan on 5/1/17.
//  Copyright © 2017 Mikal Callahan. All rights reserved.
//

import UIKit

class BrandViewController: UIViewController, UITableViewDataSource{
    //, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var brandLabel: UILabel!
    var brandName: String!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var locationsTable: UITableView!
    
    var count: Int = 0

    
    var dispensaries = ["Dank Remedies":"888-949-DANK", "Meds Are Us":"2534 South Santa Fe Ave suite C Vista, CA 92083", "Salty Dog Organics":"2050 East Vista Way Vista, CA 92084", "Golden State CBD":"1275 S Santa Fe Ave Suite #101 Vista, CA 92083", "BloomingScales":"732 E Vista Way Suite #A Vista, California 92804", "Tree House Collective":"1526 S. Santa Fe Unit B Vista, CA 92084", "Vista Wellness Center":"760-933-8285", "The laughing Leaf":"1020 E. Vista Way Vista, CA 92084", "Delta 9":"760-421-1419", "Tri City Emerald":"1945 W. Vista Way Oceanside, CA 92083", "Breaking Buds":"1450 W Mission Road San Marcos, CA 92069", "Organic Solutions":"760-207-5742", "SoCal City Lites":"760-575-2639"]
    
    var presidential = ["Dank Remedies","Meds Are Us","Salty Dog Organics"]
    var kurvana = ["Golden State CBD", "BloomingScales", "Tree House Collective", "Vista Wellness Center"]
    var spliffin = ["Vista Wellness Center", "The Laughing Leaf", "Delta 9"]
    var sensichew = ["Tree House Collective", "Vista Wellness Center", "Tri City Emerald", "The Laughing Leaf", "Socal City Lites", "Breaking Buds"]
    var jetty = ["Vista Wellness Center", "Delta 9", "Organic Solutions", "SoCal City Lites", "Breaking Buds"]
    var cheebachew = ["Golden State CBD", "BloomingScales", "Tree House Collective", "Vista Wellness Center", "Tri City Emerald", "The Laughing Leaf", "SoCal City Lites"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if brandName != nil{
            brandLabel.text = brandName
        }
        else{
            brandLabel.text = "Unknown"
        }
        
        locationsTable.dataSource = self
        /*
        locationsTable.delegate = self
        */
        //getLocations()
        //createLabels()
        // Do any additional setup after loading the view.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getTableRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = getDispensaryName(indexPath: indexPath)
        //cell = getDispensaryAddress(indexPath: indexPath)
        //var cell = UITableViewCell()
        //cell = getTableData()
        //cell.textLabel?.text = "Dicks"
        //cell.textLabel?.text = presidential[indexPath.row]
        return cell
    }
    
    func getTableRows() -> Int {
        switch(brandName){
        case "Presidential RX":
            return presidential.count
        case "Kurvana":
            return kurvana.count
        case "Spliffin":
            return spliffin.count
        case "Sensi Chew":
            return sensichew.count
        case "Cheeba Chew":
            return cheebachew.count
        case "Jetty Extracts":
            return jetty.count
        default:
            return 0
        }
    }
    
    func getDispensaryName(indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //let dispensaryName: String!
        switch(brandName){
        case "Presidential RX":
            cell.textLabel?.text = presidential[indexPath.row]
            //print(cell.textLabel?.text! ?? print("Could not get name"))
            //cell.detailTextLabel?.text = dispensaries[dispensaryName]
        case "Kurvana":
            cell.textLabel?.text = kurvana[indexPath.row]
        case "Spliffin":
            cell.textLabel?.text = spliffin[indexPath.row]
        case "Sensi Chew":
            cell.textLabel?.text = sensichew[indexPath.row]
        case "Cheeba Chew":
            cell.textLabel?.text = cheebachew[indexPath.row]
        case "Jetty Extracts":
            cell.textLabel?.text = jetty[indexPath.row]
        default:
            break
        }
        //cell.textLabel?.text = presidential[indexPath.row]
        return cell
    }
    
    func getDispensaryAddress(indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch(brandName){
        case "Presidential RX":
            cell.textLabel?.text = dispensaries[brandName]
            //print(cell.textLabel?.text! ?? print("Could not get name"))
        //cell.detailTextLabel?.text = dispensaries[dispensaryName]
        case "Kurvana":
           // cell.textLabel?.text = kurvana[indexPath.row]
            break
        case "Spliffin":
            break
            //cell.textLabel?.text = spliffin[indexPath.row]
        case "Sensi Chew":
            break
            //cell.textLabel?.text = sensichew[indexPath.row]
        case "Cheeba Chew":
            break
           // cell.textLabel?.text = cheebachew[indexPath.row]
        case "Jetty Extracts":
            break
           // cell.textLabel?.text = jetty[indexPath.row]
        default:
            break
        }
        
        return cell
    }

    func getBrand() -> String {
        if let brand = brandName{
            return brand
        }
        else{
            return "Unknown Brand"
        }
    }
    
}
    /*
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath:indexPath) as MyCell
        // no "if" - the cell is guaranteed to exist
        // ... do stuff to the cell here ...
        cell.textLabel.text = // ... whatever
        // ...
        return cell
    }
    */
    /*
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (brandName){
        case "Presidential RX":
            return presidential.count
        default:
            break
        }
        
        return 0
    }
    */
    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = UITableViewCell()
        let label = UILabel(frame: CGRect(x:0, y:0, width:200, height:50))
        label.text = "Hello Man"
        cell.addSubview(label)
        return cell
    }
    */
    /*
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    */
    /*
    func getLocations(){
        //let name = brandName.lowercased()
        if brandName == "Presidential RX"{
            for dispensaryName in presidential{
                if let dispensary = dispensaries[dispensaryName]{
                    addCell(dispensaryName: dispensaryName, dispensary: dispensary)
                    //print(dispensaryName + " " + dispensary)
                }
            }
        }
    }
 */
    // TODO: Working on adding cell on click
    /*
    func addCell(dispensaryName: String, dispensary: String){
        count += 1
        var cell = locationsTable.dequeueReusableCell(withIdentifier: "CELL")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "CELL")
        }
        // MARK: - Table view data source
        
        cell!.textLabel!.text = "Baking Soda"
        cell!.detailTextLabel!.text = "1/2 cup"
        cell!.textLabel!.text = "Hello World"
        /*
        cell!.textLabel!.text = dispensaryName
        cell!.detailTextLabel!.text = dispensary
         */
        locationsTable.addSubview(cell!)
        print(cell!)
        //return cell
    }
 */
    /*
    func createLabels(){
        //let brand = getBrand()
    // CGRectMake has been deprecated - and should be let, not var
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    
    // you will probably want to set the font (remember to use Dynamic Type!)
    label.font = UIFont.preferredFont(forTextStyle: .footnote)
    
    // and set the text color too - remember good contrast
    label.textColor = .black
    
    // may not be necessary (e.g., if the width & height match the superview)
    // if you do need to center, CGPointMake has been deprecated, so use this
    label.center = CGPoint(x: 160, y: 284)
    
    // this changed in Swift 3 (much better, no?)
    label.textAlignment = .center
    
    //  label.text = brand.lowercased() + "Dispensaries"[0]
    
    locationsTable.addSubview(label)
    }
    */

/*
 
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
 */

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
