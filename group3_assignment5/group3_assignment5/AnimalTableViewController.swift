//
//  AnimalTableViewController.swift
//  group3_assignment5
//
//  Created by Denver Ray Luckadoo III on 10/2/18.
//  Copyright © 2018 Group 3. All rights reserved.
//

import UIKit



class AnimalTableViewCell: UITableViewCell {
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var animalSciName: UILabel!
    @IBOutlet weak var animalClass: UILabel!
    @IBOutlet weak var animalWeight: UILabel!
    @IBOutlet weak var goToCollectionView: UIButton!
}

class AnimalTableViewController: UITableViewController {
    
    var Animals = [ Animal(image:"ahaha",name:"Aha Ha",sciName:"Aha Ha",animClass:"Insecta",size:"0.1 g"), Animal(image:"Animal",name:"Animal",sciName:"Muppettis Drummercus",animClass:"Muppet",size:"15 kg"), Animal(image:"saiga",name:"Saiga Antellope",sciName:"Saiga Tatarica",animClass:"Mammalia",size:"26-29 kg"), Animal(image:"wombat",name:"Wombat",sciName:"Vombatus ursinus tasmaniensis",animClass:"Mammalia",size:"20-35 kg") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    /*
     override func numberOfSections(in tableView: UITableView) -> Int {
     // #warning Incomplete implementation, return the number of sections
     return 1
     }
     */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let animal = Animals[indexPath.section]
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath) as! AnimalTableViewCell
            cell.animalImage?.image = UIImage(named: animal.image)
            cell.animalName?.text = animal.name
            
            // add a tag and a sender to the button in each animal table cell
            cell.goToCollectionView.tag = indexPath.section
            cell.goToCollectionView.addTarget(self, action: #selector(handleButtonTapped(sender:)), for: .touchUpInside)
            
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DescriptionCell", for: indexPath) as! AnimalTableViewCell
            cell.animalSciName?.text = animal.sciName
            cell.animalClass?.text = animal.animClass
            cell.animalWeight?.text = animal.size
            return cell
            
        }
    }
    
    @objc func handleButtonTapped(sender: UIButton) {
        
        // Now you can easily access the sender's tag, (which is equal to the indexPath.row of the tapped button).
        
        // Access the selected cell's index path using the sender's tag like so
        
        let selectedIndex = IndexPath(row: sender.tag, section: 0)[1]
        print(IndexPath(row: sender.tag, section: 0))
        print(selectedIndex)
        print(Animals[selectedIndex].name)
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "collectionView") as? AnimalCollectionViewController {
            vc.animal = Animals[selectedIndex].name
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
