//
//  AllProblemsTableViewController.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/28/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import UIKit

class AllProblemsTableViewController: UITableViewController {
    var pl = problemList().getList()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        pl.removeAll()
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pl.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("allcell", forIndexPath: indexPath)
        let problem = pl[indexPath.row]
        cell.textLabel!.text = problem.getName()
        cell.detailTextLabel!.text = problem.getDifficulties()
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailsegue" {
            let detail: problemDetailViewController = segue.destinationViewController as! problemDetailViewController
            let indexPath:NSIndexPath? = self.tableView!.indexPathForSelectedRow
            detail.name = pl[indexPath!.row].getName()
            detail.difficulties = pl[indexPath!.row].getDifficulties()
            detail.explanation = pl[indexPath!.row].getExplanation()
            detail.companies = pl[indexPath!.row].getCompany()
            detail.solution = pl[indexPath!.row].getSolution()
        }
    }

}
