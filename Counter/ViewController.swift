//
//  ViewController.swift
//  Counter
//
//  Created by ulyana on 17.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    private  let dateFormatter = DateFormatter()
    
    @IBOutlet private  weak var minusButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var historyCounter: UITextView!
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    // Сreating a time format
    func getCurrentDate() -> String {
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.dateFormat = "MMM d, yyyy h:mm"
            
        let formattedDate = dateFormatter.string(from: Date())
        return formattedDate
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    
    
    // Action: the counter value will decrease by 1
    @IBAction private func minusAction(_ sender: Any) {
        if count != 0 {
            count -= 1
            counterLabel.text = "\(count)"
            historyCounter.text += "\n\(getCurrentDate()): значение изменено на -1"
        }
    }
    
    // Action: the counter value will increase by 1
    @IBAction private func plusAction(_ sender: Any) {
        count += 1
        counterLabel.text = "\(count)"
        historyCounter.text += "\n\(getCurrentDate()): значение изменено на +1"
    }
    
    // Action: reset the counter result
    
    @IBAction func resetAction(_ sender: Any) {
        count = 0
        counterLabel.text = "\(count)"
        historyCounter.text += "\n\(getCurrentDate()): значение сброшено"
    }
}

