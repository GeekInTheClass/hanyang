//
//  coupleTableViewController.swift
//  stuckmanagement
//
//  Created by 남혜빈 on 2019. 4. 18..
//  Copyright © 2019년 남혜빈. All rights reserved.
//

import UIKit

class coupleTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "couple", for: indexPath)
        
        let coupleFortheRow:user = couple_array[indexPath.row]
        cell.textLabel?.text = coupleFortheRow.name
        
        cell.detailTextLabel?.text = coupleFortheRow.phonenumber
        
        /*if indexPath.row > 4 {
        cell.textLabel?.text = "love"
        cell.detailTextLabel?.text = "latte"
        // Configure the cell...
        }
        else {
            cell.textLabel?.text = "broken"
            cell.detailTextLabel?.text = "espresso"
        }*/
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    /*override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }*/
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "detailView") {
            let destVC = segue.destination as! ViewController
            let selectedCouple = couple_array[self.tableView.indexPathForSelectedRow!.row]
            destVC.coupleForView = selectedCouple
        }
    }
}
