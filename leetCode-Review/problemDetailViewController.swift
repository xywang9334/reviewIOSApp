//
//  problemDetailViewController.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/28/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import UIKit

class problemDetailViewController: UIViewController, UIScrollViewDelegate {
    var name: String?
    var difficulties: String?
    var explanation: String?
    var companies: [String]?
    var solution: UIImage?
    
    
    
    @IBOutlet var nameTag: UILabel!
    @IBOutlet var difficultTag: UILabel!
    @IBOutlet var companyTag: UILabel!
    
    @IBOutlet var imageSolution: UIImageView!
    
    @IBOutlet var explan: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTag.text = name
        difficultTag.text = difficulties
        explan.text = explanation
        imageSolution.image = solution
        self.title = name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
