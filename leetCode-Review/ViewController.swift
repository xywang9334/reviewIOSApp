//
//  ViewController.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/24/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pl = problemList().getList()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "allProblem" {
            let all: AllProblemsTableViewController = segue.destinationViewController as! AllProblemsTableViewController
            all.pl = pl
        }
        if segue.identifier == "companysegue" {
            let company: CompanyTableViewController = segue.destinationViewController as! CompanyTableViewController
            company.problem = pl
        }
    }
}

