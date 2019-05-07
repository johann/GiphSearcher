//
//  Throttable.swift
//  GiphSearcher
//
//  Created by Johann Kerr on 5/2/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import UIKit
import Foundation

class Throttler {
    
    var queue: DispatchQueue
    var job: DispatchWorkItem = DispatchWorkItem(block: {})
    var previousRun: Date = Date.distantPast
    var interval: TimeInterval

    init(interval: TimeInterval = 0.5, queue: DispatchQueue = .global(qos: .userInitiated)) {
        self.interval = interval
        self.queue = queue
    }
    
    
    func throttle(block: @escaping () -> ()) {
        job.cancel()
        job = DispatchWorkItem(){ [weak self] in
            self?.previousRun = Date()
            block()
        }
        
        let seconds = Date.seconds(from: previousRun)
        let delay = seconds > interval ? 0 : interval
        queue.asyncAfter(deadline: .now() + delay, execute: job)
    }
}


