//
//  GitHub.swift
//  GoGoGitHub
//
//  Created by Brandon Holderman on 8/15/17.
//  Copyright © 2017 Brandon Holderman. All rights reserved.
//

import Foundation
import UIKit

class GitHub {
    
    var clientID = "da82d25c054d7b263fbf"
    var clientSecret = "18e7e95eb8ef30f53a2c19d3bd7461ff09f0ce2b"
    
    static let baseURL = "https://github.com/login/oauth"
    static let shared = GitHub()
    
    func requestAuthWith(parameters: [String: String]) {
        var parameterString = ""
        
        for (key, value) in parameters {
            parameterString += "&\(key)=\(value)"
        }
        
        if let requestURL = URL(string: "\(GitHub.baseURL)/authorize?client_id=\(self.clientID)\(parameterString)") {
            print(requestURL)
            UIApplication.shared.open(requestURL, options: [:], completionHandler: nil)
        }
    }
}
