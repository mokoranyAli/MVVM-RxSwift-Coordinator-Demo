//
//  Observable.swift
//  MVVM_InPractice
//
//  Created by Mohamed Korany Ali on 7/14/20.
//  Copyright © 2020 Mohamed Korany Ali. All rights reserved.
//

import Foundation

class Box<T> {
    
    typealias Observer = (T) -> ()
    var observer: Observer?
    
    var value: T {
        didSet {
            observer?(value)
        }
    }
    
    init(_ v: T) {
        value = v
    }
    
    func bind(_ listner: Observer?) {
        self.observer = listner
    }
    
    func subscribe(_ observer: Observer?) {
        self.observer = observer
        observer?(value)
    }


}
