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

        //example.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        print("returning count in main")
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
    
    @IBAction func cancelToClassViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveClassDetail(segue:UIStoryboardSegue) {
        if let AddClassViewController = segue.sourceViewController as? AddClassViewController {
            
            //add the new player to the players array
            if let course = AddClassViewController.course {
                courses.append(course)
                
                //update the tableView
                let indexPath = NSIndexPath(forRow: courses.count-1, inSection: 0)
                courseTableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toClassDetails"{ // if we segue to class details
            let cell = sender as! UITableViewCell
            let indexPath = courseTableView.indexPathForCell(cell)
            let course = courses[indexPath!.row]
        
            let CourseDetailViewController = segue.destinationViewController as! CourseDetailsViewController
            CourseDetailViewController.course = course
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    



}

