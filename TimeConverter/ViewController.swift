//
//  ViewController.swift
//  TimeConverter
//
//  Created by Development_Admin on 5/7/18.
//  Copyright © 2018 GaneshaKumar K. Open for any use.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var txtTime: NSTextField?
    @IBOutlet var lblTimeIntervalSince1970: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnConvert(_ sender: Any) {
        //Read the textbox.
        //Get date.
        if let strDate = txtTime?.stringValue {
        
        //Convert to unix time stamp.
            let date = NSDate(timeIntervalSince1970: Double(strDate)!)
            
            //Date formatter.
            let dateFormater = DateFormatter()
            
            dateFormater.dateFormat = "h:mm a 'on' MMMM dd, yyyy"
            dateFormater.amSymbol = "AM"
            dateFormater.pmSymbol = "PM"
            
            let strTime = dateFormater.string(from: date as Date)
            
            lblTimeIntervalSince1970.stringValue = strTime
        }
        else {
            //Give popup.
        }
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

