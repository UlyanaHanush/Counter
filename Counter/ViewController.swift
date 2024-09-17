//
//  ViewController.swift
//  Counter
//
//  Created by ulyana on 17.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var zeroingButton: UIButton!
    
    @IBOutlet weak var historyCounter: UITextView!
    
    @IBOutlet weak var counterLabel: UILabel!
   
    // Сreating a time format
    func dataCreation() -> String {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.dateFormat = "MMM d, yyyy h:mm"
        
        let formattedDate = dateFormatter.string(from: Date())
        return formattedDate}
    
    // Action: the counter value will decrease by 1
    @IBAction func minusAction(_ sender: Any) {
        if count != 0 {
            count -= 1
            counterLabel.text = "\(count)"
            historyCounter.text += "\n\(dataCreation()): значение изменено на -1"}}
    
    // Action: the counter value will increase by 1
    @IBAction func plusAction(_ sender: Any) {
        count += 1
        counterLabel.text = "\(count)"
        historyCounter.text += "\n\(dataCreation()): значение изменено на +1"}
    
    // Action: reset the counter result
    @IBAction func zeroingAction(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
        historyCounter.text += "\n\(dataCreation()): значение сброшено"}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
    }
}

