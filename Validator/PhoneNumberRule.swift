//
//  PhoneValidation.swift
//  Pingo
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2014 Byron Mackay. All rights reserved.
//

import Foundation

public class PhoneNumberRule: Rule {
    
    let PHONE_REGEX = "\\(\\d{3}\\)[\\s.-]\\d{3}[\\s.-]\\d{4}(\\sx\\d+)?"
    
    let message:String
    
    public init(message : String = "Enter a valid 10 digit phone number"){
        self.message = message
    }
    
    public func validate(value: String) -> Bool {
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        return phoneTest.evaluateWithObject(value)
    }
    
    public func errorMessage() -> String {
        return message
    }
    
}
