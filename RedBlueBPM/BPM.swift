//
//  BPM.swift
//  RedBlueBPM
//
//  Created by Andre Carrera on 8/30/17.
//  Copyright © 2017 Carrera. All rights reserved.
//

import Foundation

class DTTapTempo {
    private let timeOutInterval: TimeInterval
    private let minTaps: Int
    private var taps: [NSDate] = []
    
    init(timeOut: TimeInterval, minimumTaps: Int) {
        timeOutInterval = timeOut
        minTaps = minimumTaps
    }
    
    func resetTaps() -> Void {
        taps.removeAll()
    }
    
    func addTap() -> Double? {
        let thisTap = NSDate()
        
        if let lastTap = taps.last {
            if thisTap.timeIntervalSince(lastTap as Date) > timeOutInterval {
                taps.removeAll()
            }
        }
        
        taps.append(thisTap)
        guard taps.count >= minTaps else { return nil }
        guard let firstTap = taps.first else { return nil }
        
        let avgIntervals = thisTap.timeIntervalSince(firstTap as Date) / Double(taps.count - 1)
        return 60.0 / avgIntervals
    }
}
