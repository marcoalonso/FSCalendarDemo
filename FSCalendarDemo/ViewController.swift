//
//  ViewController.swift
//  FSCalendarDemo
//
//  Created by marco rodriguez on 25/08/22.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {

    @IBOutlet weak var calendar: FSCalendar!
    
    var formatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendar.delegate = self
        calendar.dataSource = self
        
        calendar.scrollDirection = .vertical
        calendar.scrollEnabled = true
        
        calendar.scope = .month //.week
        
        calendar.appearance.titleFont = UIFont.systemFont(ofSize: 20)
        calendar.appearance.headerTitleFont = UIFont.boldSystemFont(ofSize: 17)
        calendar.appearance.weekdayFont = UIFont.boldSystemFont(ofSize: 15)
        
        calendar.appearance.todayColor = .green
        calendar.appearance.titleTodayColor = .white
        calendar.appearance.titleDefaultColor = .systemBlue
        calendar.appearance.headerTitleColor = .black
        calendar.appearance.weekdayTextColor = .purple
        
        calendar.allowsMultipleSelection = true
        
    }


}

extension ViewController: FSCalendarDataSource, FSCalendarDelegate {
//    func calendar(_ calendar: FSCalendar, titleFor date: Date) -> String? {
//        return "MyCalendar"
//    }
    
//    func minimumDate(for calendar: FSCalendar) -> Date {
//        return .now
//    }
//
//    func maximumDate(for calendar: FSCalendar) -> Date {
//        return .now.addingTimeInterval((24*60*60)*180)
//    }
    
//
//    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
//        let cell = calendar.dequeueReusableCell(withIdentifier: "cell", for: .now, at: position)
//
//        return cell
//    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        formatter.dateFormat = "dd-MM-yyyy"
        print(" Date Selected: \(formatter.string(from: date))")
    }
    
    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        formatter.dateFormat = "dd-MM-yyyy"
        print(" Date De-Selected: \(formatter.string(from: date))")
    }
}
