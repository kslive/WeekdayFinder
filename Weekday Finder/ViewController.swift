//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Eugene Kiselev on 29.06.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    


    @IBAction func findDayTapped(_ sender: UIButton) {

        let calendar = Calendar.current

        var dateComponents = DateComponents()
        dateComponents.day = Int(dateTF.text!)
        dateComponents.month = Int(monthTF.text!)
        dateComponents.year = Int(yearTF.text!)
        
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "EEEE"

        let date = calendar.date(from: dateComponents)
        let weekday = dateFormatter.string(from: date!)

        resultLabel.text = weekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true )
    }
}
