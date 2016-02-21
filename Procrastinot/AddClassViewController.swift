//
//  AddClassViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class AddClassViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var course: courseObject!
    var courses = [courseObject]()
    
    @IBOutlet weak var courseTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTableView.dataSource = self
        courseTableView.delegate = self
        courseTableView.reloadData()
        
        //dummy courses array
        createdumms()
        
        //example.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return courses.count
        /*      if let courses = courses { // if semesters is not nil, assign it to sem
        print("its gonna return count")
        print(courses.count)
        return courses.count // and return the number of elems
        }
        print("its gonna return 0")
        return 0 // else there are no elems
        */
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let course = courses[indexPath.row] // course is a courseObject
        print(course.courseName)
        let courseCell = tableView.dequeueReusableCellWithIdentifier("classFullList", forIndexPath: indexPath) as! FullCourseListCell
        print("after let course cell")
        courseCell.course = course // copy the memory from the course dictionary into each cell
        courseCell.courseLabel.text = course.courseCode
        return courseCell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveClass" {
        let cell = sender as! FullCourseListCell
            course = cell.course
        }
    }
    
    func createdumms(){
        var dict1 = [
            "courseCode": "CS 125",
            "courseName": "Intro to programming"
        ]
        var dummyCourse1 = courseObject.init(dictionary: dict1)
        courses.insert(dummyCourse1, atIndex: 0)

        
        var dict2 = [
            
            "courseCode":"CS173",
            
            "courseName": "Discrete Structures"
            
        ]
        var dummyCourse2 = courseObject.init(dictionary: dict2)
        
        var dummies = [courseObject]()
        
        
        
        var dict3 = [
            
            "courseCode":"CS225",
            
            "courseName":"Data Structures"
            
        ]
        
        var dummyCourse3 =
        
        courseObject.init(dictionary : dict3)
        
        
        
        var dict4 = [
            
            "courseCode":"ECE110",
            
            "courseName":"Introduction to Electronics"
            
        ]
        
        
        
        var dummyCourse4 =
        
        courseObject.init(dictionary : dict4)
        
        
        
        var dict5 = [
            
            "courseCode":"ECE120",
            
            "courseName":"Introduction to Computing"
            
        ]
        
        
        
        var dummyCourse5 =
        
        courseObject.init(dictionary: dict5)
        
        
        
        var dict6 = [
            
            "courseCode":"ECE220",
            
            "courseName":"Systems and Programming"
            
        ]
        
        
        
        var dummyCourse6 =
        
        courseObject.init(dictionary: dict6)
        
        
        
        var dict7 = [
            
            "courseCode":"CS233",
            
            "courseName":"Computer Architecture"]
        
        
        
        var dict8 = [
            
            "courseCode": "CS241",
            
            "courseName":"System Programming"
            
        ]
        
        var dummyCourse8 =
        
        courseObject.init(dictionary:dict8)
        
        
        
        
        
        var dummyCourse7 =
        
        courseObject.init(dictionary: dict7)
        
        
        
        var dict9 = [
            
            "courseCode":"CS357",
            
            "courseName":"Numerical Methods I"
            
        ]
        
        
        
        var dummyCourse9 =
        
        courseObject.init(dictionary: dict9)
        
        
        
        var dict10 = [
            
            "courseCode": "CS412",
            
            "courseName":"Introduction to Data Mining"
            
        ]
        
        var dummyCourse10 =
        
        courseObject.init(dictionary: dict10)
        
        dummies.append(dummyCourse1)
        
        dummies.append(dummyCourse2)
        
        dummies.append(dummyCourse3)
        
        dummies.append(dummyCourse4)
        
        dummies.append(dummyCourse5)
        
        dummies.append(dummyCourse6)
        
        dummies.append(dummyCourse7)
        
        dummies.append(dummyCourse8)
        
        dummies.append(dummyCourse9)
        
        dummies.append(dummyCourse10)
        
        courses = dummies
    }

}
