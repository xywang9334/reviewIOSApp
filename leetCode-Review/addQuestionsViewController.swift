//
//  addQuestionsViewController.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/25/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import UIKit
import CoreData

class addQuestionsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var problemTitle: UITextField!
    @IBOutlet var difficulties: UITextField!
    @IBOutlet var company: UITextField!
    
    @IBOutlet var explanation: UITextView!
    @IBOutlet var solution: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        explanation.text = "put your explanation here"
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    @IBAction func uploadImage(sender: AnyObject) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.SavedPhotosAlbum){
            
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.SavedPhotosAlbum;
            imagePicker.allowsEditing = false
            
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
        
        solution.image = image
        
    }
    @IBAction func saveButton(sender: AnyObject) {
        saveQuestion()
    }
    
    func saveQuestion() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        // Create the entity we want to save
        let entity =  NSEntityDescription.entityForName("Problems", inManagedObjectContext: managedContext)
        
        let problem = NSManagedObject(entity: entity!, insertIntoManagedObjectContext:managedContext)
        
        problem.setValue(problemTitle.text, forKey: "name")
        problem.setValue(difficulties.text, forKey: "difficulties")
        problem.setValue(company.text, forKey: "company")
        problem.setValue(solution.image, forKey: "answer")
        problem.setValue(explanation.text, forKey: "explanation")
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
