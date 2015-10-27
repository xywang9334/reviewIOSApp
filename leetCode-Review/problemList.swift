//
//  curatedList.swift
//  leetCode-Review
//
//  Created by Xinyi Wang on 10/27/15.
//  Copyright © 2015 Xinyi Wang. All rights reserved.
//

import Foundation

class problemList {
    private var list = [Problems]()
    
    init () {
        do {
            let infoPath = NSBundle.mainBundle().pathForResource("Problems", ofType: "plist")!
            let infoDict = NSDictionary(contentsOfFile: infoPath)!
            let solutionPath = NSBundle.mainBundle().resourcePath! + "/Solutions"
            let names = try NSFileManager.defaultManager().contentsOfDirectoryAtPath(solutionPath)
            for name in names {
                print (name)
                let retrievedName = name
            }
        }
        catch {
            print("Cannot open path")
        }
    }
    
    func getList() -> [Problems] {
        return self.list
    }
}