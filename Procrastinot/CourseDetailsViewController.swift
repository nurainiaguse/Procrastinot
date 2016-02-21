//
//  CourseDetailsViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit

class CourseDetailsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var course: courseObject!
    
    @IBOutlet weak var assignmentTableView: UITableView!
    
    var homework: [homeworkObject]?
    var exam: [examObject]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignmentTableView.dataSource = self
        assignmentTableView.delegate = self
        assignmentTableView.reloadData()
        
        //dummy courses array
        
        //example.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("hello prepare for course details segue")
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if let homework = homework{
            if section == 0{
                
                return homework.count
            }
        }
        if let exam = exam {
            if section == 1{
                return exam.count
            }
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let hwexamCell = tableView.dequeueReusableCellWithIdentifier("hwexam", forIndexPath: indexPath) as! HwExam
        if indexPath.section == 0 {
            if let homework = homework{
                let hw = homework[indexPath.row] // course is a courseObject
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd" // Set the way the date should be displayed
                hwexamCell.dateLabel.text = formatter.stringFromDate(hw.dueBy!)
                hwexamCell.hwOrExam.text = "Homework"
                hwexamCell.nameofAssignment.text = hw.title
                
            }
        }
        else {
            if let exam = exam{
                let xm = exam[indexPath.row] // course is a courseObject
                hwexamCell.hwOrExam.text = "Exam"
                let formatter = NSDateFormatter()
                formatter.dateFormat = "yyyy-MM-dd" // Set the way the date should be displayed
                hwexamCell.dateLabel.text = formatter.stringFromDate(xm.date!)
                hwexamCell.nameofAssignment.text = xm.location
            }
        }
        return hwexamCell
        
    }


    @IBAction func cancelToAddingDetail(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func saveCourseDetail(segue:UIStoryboardSegue) {
        if let DatePickerViewController = segue.sourceViewController as? DatePickerViewController {
            
            //add the new player to the players array
            if let homework = DatePickerViewController.homework {
                course.addHomework(homework)
                if let hwarr = self.homework {
                }
                else {
                    self.homework = []
                }
                self.homework!.append(homework)
                let indexPath = NSIndexPath(forRow: self.homework!.count-1, inSection: 0)
                assignmentTableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
            if let exam = DatePickerViewController.exam {
                course.addExam(exam)
                if let xmarr = self.exam {
                }
                else {
                    self.exam = []
                }
                self.exam!.append(exam)
                let indexPath = NSIndexPath(forRow: self.exam!.count-1, inSection: 1)
                assignmentTableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)

            }
                //update the tableView
            
        }
        
    }

}
