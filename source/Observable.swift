//
//  Observable.swift
//

import Foundation

class Observable<T, S> {
    
    var _observers:[T]? = [T]()
    
    var observers:[T]? {
        get {
            return _observers
        }
        set {
            _observers = newValue
        }
    }
    
    func registerObserver(observer:T){}
    
    func notify(arg:S){
        for observer in _observers! {
            (observer as! Observer).notify(arg: arg)
        }
    }
    
 
}



