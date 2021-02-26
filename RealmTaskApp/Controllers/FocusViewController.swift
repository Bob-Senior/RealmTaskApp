//
//  FocusViewController.swift
//  RealmTaskApp
//
//  Created by BOBUR on 25/02/2021.
//

import UIKit

class FocusViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    var timer = Timer()
     var isTimerStarted = false
     var time = 1500
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        NotificationCenter.default.addObserver(self, selector: #selector(), name: <#T##NSNotification.Name?#>, object: <#T##Any?#>)

        
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        cancelButton.isEnabled = true
        cancelButton.alpha = 1.0
        if !isTimerStarted {
            
            startTimer()
            isTimerStarted = true
            startButton.setTitle("Pause", for: .normal)
            startButton.setTitleColor(UIColor.orange, for: .normal)
        }else{
            timer.invalidate()
            isTimerStarted = false
            startButton.setTitle("Resume", for: .normal)
            startButton.setTitleColor(UIColor.green, for: .normal)
        }
        
    }
    

    @IBAction func cancelButtonTapped(_ sender: Any) {
        cancelButton.isEnabled = false
        cancelButton.alpha = 0.5
        timer.invalidate()
        time = 1500
        isTimerStarted = false
        timeLabel.text = "25:00"
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        time -= 1
        timeLabel.text = formatTime()
        
    }
    func formatTime() -> String{
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i", minutes, seconds)
        
    }
}
