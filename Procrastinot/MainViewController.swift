//
//  ViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit


class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var courseTableView: UITableView!
    
    var courses = [courseObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        courseTableView.dataSource = self
        courseTableView.delegate = self
        courseTableView.reloadData()
        
        //dummy courses array
        var dict1 = [
            "courseCode": "CS 125",
            "courseName": "Intro to programming"
        ]
        var dummyCourse1 = courseObject.init(dictionary: dict1)
        courses.insert(dummyCourse1, atIndex: 0)
        //example.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        let courseCell = tableView.dequeueReusableCellWithIdentifier("coursecell", forIndexPath: indexPath) as! CourseCellTableViewCell
        print("after let course cell")
        courseCell.course = course // copy the memory from the course dictionary into each cell
        courseCell.classLabel.text = course.courseCode
        return courseCell
    }
    


}

