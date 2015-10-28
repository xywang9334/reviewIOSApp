//
//  curatedList.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/27/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import Foundation

class problemList {
    private var ProblemList = [Problems]()
    init () {
        do {
            let infoPath = NSBundle.mainBundle().pathForResource("Problems", ofType: "plist")!
            let infoDict = try NSDictionary(contentsOfFile: infoPath)!
            let problemArray = infoDict.valueForKey("Problems") as! NSArray
            
            for value in problemArray {
                assert(value.count == 5)
                let name = value[0] as! String
                let explanation = value[1] as! String
                let solution = value[2] as! String
                let company = value[3] as! String
                let difficulties = value[4] as! String
                let temp = Problems(name: name, difficulties: difficulties, explanation: explanation, solution: solution)
                temp.addCompany(company)
                ProblemList.append(temp)
            }
            
        }
        catch {
            print("Cannot open path")
        }
    }
    
    func getList() -> [Problems] {
        return self.ProblemList
    }
}