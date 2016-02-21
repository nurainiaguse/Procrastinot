//
//  courseObject.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class courseObject: NSObject {
    var courseCode: String
    var courseName: String
    var homeworks: [homeworkObject]?
    var exams: [examObject]?
    var courseWebsite: [String]?
    
    init(dictionary: NSDictionary){ // constructor
        courseCode = dictionary["courseCode"] as! String
        courseName = dictionary["courseName"] as! String
        homeworks = dictionary["homework"] as? [homeworkObject]
        exams = dictionary["exam"] as? [examObject]
        courseWebsite = dictionary["courseWebsite"] as? [String]
    }

    func addHomework (homework: homeworkObject){
        homeworks?.insert(homework, atIndex: 0)
        
        // and append it to the end of the homework array
    }
    
    func addExam(exam: examObject){
        exams?.append(exam) // and append it to the end of the exam array
    }
    
    
}
