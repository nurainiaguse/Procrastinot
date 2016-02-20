//
//  courseObject.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class courseObject: NSObject {
    var courseName: String?
    var homework: NSDictionary?
    var exam: NSDictionary?
    var courseWebsite: [String]?
    
    init(dictionary: NSDictionary){ // constructor
        courseName = dictionary["courseName"] as? String
        homework = dictionary["homework"] as? NSDictionary
        exam = dictionary["exam"] as? NSDictionary
        courseWebsite = dictionary["courseWebsite"] as? [String]
    }

    func addHomework (title: String, date: NSDate, time_t time){
        
    }
    
}
