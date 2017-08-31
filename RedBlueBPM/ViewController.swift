//
//  ViewController.swift
//  RedBlueBPM
//
//  Created by Andre Carrera on 8/30/17.
//  Copyright © 2017 Carrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var tapableButton: UIButton!
    
    @IBOutlet weak var bpmLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    let nowTap = DTTapTempo(timeOut: 2.0, minimumTaps: 2)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tapBPM(_ sender: Any) {
        if let bpmNum  =  nowTap.addTap(){
            let bpmInt = Int(bpmNum.rounded())
            bpmLabel.text = "\(bpmInt) BPM"
        }
        
        
    }
    
    @IBAction func resetBpm(_ sender: Any) {
        nowTap.resetTaps()
        bpmLabel.text = "-- BPM"
    }
}

