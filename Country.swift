//
//  Country.swift
//  Pods
//
//  Created by iOS Developer on 7/21/17.
//
//

struct Country {
    var flagEmoji: String
    var countryName: String
    var phoneExtension: String
    var code: String
    
    init(flagEmoji: String, countryName: String, phoneExtension: String, code: String) {
        self.flagEmoji = flagEmoji
        self.countryName = countryName
        self.phoneExtension = phoneExtension
        self.code = code
    }
}
