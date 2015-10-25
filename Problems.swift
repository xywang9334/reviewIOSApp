//
//  Problems.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/24/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Problems: NSManagedObject {
    @NSManaged var name: String
    @NSManaged var tag: [String]
    @NSManaged var company: String
    @NSManaged var solution: [UIImage]
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        setPrimitiveValue(name, forKey: "name")
        setPrimitiveValue(company, forKey: "company")
        setPrimitiveValue(tag, forKey: "tag")
        setPrimitiveValue(solution, forKey: "answer")
    }
    
    init() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appDelegate.managedObjectContext
        let entity =  NSEntityDescription.entityForName("Problems", inManagedObjectContext: managedContext)
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
    }
}