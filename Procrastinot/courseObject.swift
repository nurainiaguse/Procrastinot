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
    var homeworks: [homeworkObject]
    var exams: [examObject]
    var courseWebsite: [String]?
    
    init(dictionary: NSDictionary){ // constructor
        courseName = dictionary["courseName"] as? String
        homeworks = (dictionary["homework"] as? [homeworkObject])!
        exams = (dictionary["exam"] as? [examObject])!
        courseWebsite = dictionary["courseWebsite"] as? [String]
    }

    func addHomework (title: String, date: NSDate){
        var homework = homeworkObject.init(title: title, dueBy: date) // initialize homework
        homeworks.append(homework) // and append it to the end of the homework array
    }
    
    func addExam(date: NSDate, location: String){
        var exam = examObject.init(date: date, location: location) // initialize exam
        exams.append(exam) // and append it to the end of the exam array
    }
    
    
}
