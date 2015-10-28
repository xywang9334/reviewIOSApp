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

class Problems{
    private var _difficulties: String
    private var _name: String
    private var _company = [String]()
    private var _tag = [String]()
    private var solution: UIImage
    private var explanation: String
    
    init (name: String, difficulties: String, explanation: String, solution: String) {
        self._name = name
        self.solution = UIImage(named: solution)!
        self._difficulties = difficulties
        self.explanation = explanation
    }
    
    func getName() -> String {
        return _name
    }
    
    func addCompany(companyList: [String]) {
        _company = companyList
    }
    
    func addCompany(company: String) {
        _company.append(company)
    }
    
    func getCompany() -> [String] {
        return _company
    }
    
    func getSolution() -> UIImage {
        return solution
    }
    
    func getExplanation() -> String {
        return explanation
    }
    
    func getDifficulties() -> String {
        return _difficulties
    }
    
}