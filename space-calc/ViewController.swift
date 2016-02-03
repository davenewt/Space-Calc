//
//  ViewController.swift
//  space-calc
//
//  Created by David Stroud on 03/02/2016.
//  Copyright © 2016 David Stroud. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
        case Equals = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var currentOperation: Operation = Operation.Empty
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        // we have to put this bit in a DO statement, and catch any error (even if we're sure there won't be an error!) otherwise swift complains.
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    // we've tagged each button with a tag corresponding to the number
    // so we only need to write one function for numbers being pressed
    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
        runningNumber += "\(btn.tag)"
        outputLbl.text = runningNumber
    }
    
    // set up our green button actions!
    @IBAction func onDividePressed(sender: AnyObject) {
        
    }
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        
    }
    @IBAction func onAddPressed(sender: AnyObject) {
        
    }
    @IBAction func onSubtractPressed(sender: AnyObject) {
        
    }
    @IBAction func onEqualsPressed(sender: AnyObject) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

