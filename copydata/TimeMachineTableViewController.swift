//
//  TimeMachineTableViewController.swift
//  copydata
//
//  Created by Sanjay Ediga on 15/10/17.
//  Copyright © 2017 copydata. All rights reserved.
//

import UIKit

class TimeMachineTableViewController: UITableViewController {

    
    //MARK: Properties
    var timeMachines = [TimeMachine]()
    
    private func loadTimeMachiness() {
        
        guard let tm1 = TimeMachine(name: "All Employees", size: "834 GB") else {
            fatalError("Unable to instantiate time timemachine1")
        }
        
        guard let tm2 = TimeMachine(name: "Inventory", size: "6.23 GB") else {
            fatalError("Unable to instantiate time timemachine2")
        }
        
        timeMachines += [tm1, tm2]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        loadTimeMachiness()
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
        return timeMachines.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "timeMachineCellId", for: indexPath) as? TimeMachineTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TimeMachineTableViewCell.")
        }

        // Configure the cell...
        // Fetches the appropriate meal for the data source layout.
        let tm = timeMachines[indexPath.row]
        
        cell.name.text = tm.name
        cell.size.text = tm.size

        return cell
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
