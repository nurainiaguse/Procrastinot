//
//  DatePickerViewController.swift
//  Procrastinot
//
//  Created by Abdulmalik on 2/20/16.
//  Copyright © 2016 Procrastinot. All rights reserved.
//

import UIKit



class DatePickerViewController: UIViewController {
    var dateandtime : NSDate?
    var datestring : String?
    var homework: homeworkObject?
    var exam: examObject?
    var segment = ["homework", "exam"]
    
    var hwTitle: String?
    
    @IBOutlet weak var titleField: UITextField!

    @IBOutlet weak var homeworkExam: UISegmentedControl!

    @IBAction func textFieldEditor(sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.DateAndTime
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)    }
    
    @IBOutlet weak var DatePicker: UITextField!

    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        DatePicker.text = dateFormatter.stringFromDate(sender.date)
        
        dateandtime = sender.date

        datestring = DatePicker.text;
        print(datestring)
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func onEditingChanged(sender: AnyObject) {
        hwTitle = titleField.text
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var hwexam = segment[homeworkExam.selectedSegmentIndex]
        if segue.identifier == "saveHw" {
            if hwexam == "homework"{
                print("it is homework")
                if let datecheck = dateandtime {
                    homework = homeworkObject.init(title:hwTitle!, dueBy: datecheck)
                } else {
                    homework = homeworkObject.init(title: hwTitle!, dueBy: NSDate())
                    
                }
            }
            else{
                print("it is an exam")
                if let datecheck = dateandtime{
                    exam = examObject.init(date: datecheck, location: hwTitle!)
                } else {
                    exam = examObject.init(date: NSDate(), location: hwTitle!)
                }
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
