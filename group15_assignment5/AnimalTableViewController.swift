//
//  AnimalTableViewController.swift
//  group15_assignment5
//
//  Created by Cathy Li on 10/2/18.
//  Copyright © 2018 CS329E. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {
    
    var content = [Animal]()
    var animal1 = Animal(name: "Cat", scientificName: "Felis catus", animalClass: "Mammalia", size: 5.0, image: "cat")
    var animal2 = Animal(name: "Gorilla", scientificName: "Gorilla gorilla", animalClass: "Mammalia", size: 220.0, image: "gorilla")
    var animal3 = Animal(name: "Dog", scientificName: "Canis lupus familiaris", animalClass: "Mammalia", size: 10.0, image: "dog")
    var animal4 = Animal(name: "Axolotl", scientificName: "Ambystoma mexicanum", animalClass: "Amphibia", size: 0.2, image: "axolotl")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        content += [animal1, animal1, animal2, animal2, animal3, animal3, animal4, animal4]

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return content.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row%2 == 0 {
            let cellIdentifier = "ImageNameTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ImageNameTableViewCell
            let animal = content[indexPath.row]
            cell.cellLabel?.text = animal.name
            cell.cellImage?.image = UIImage(named: animal.image)
            return cell
        } else {
            let cellIdentifier2 = "InfoTableViewCell"
            let cell2 = tableView.dequeueReusableCell(withIdentifier: cellIdentifier2, for: indexPath) as! InfoTableViewCell
            let animal2 = content[indexPath.row]
            cell2.scientificNameLabel?.text = animal2.scientificName
            cell2.classLabel?.text = animal2.animalClass
            cell2.weightLabel?.text = "\(animal2.size) kg"
            return cell2
        }
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
