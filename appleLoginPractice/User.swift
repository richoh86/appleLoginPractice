//
//  User.swift
//  appleLoginPractice
//
//  Created by richoh86 on 2019/12/15.
//  Copyright © 2019 richoh86. All rights reserved.
//

import Foundation
import AuthenticationServices

struct User {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    
    init(credentials: ASAuthorizationAppleIDCredential) {
        self.id = credentials.user
        self.firstName = credentials.fullName?.givenName ?? ""
        self.lastName = credentials.fullName?.familyName ?? ""
        self.email = credentials.email ?? ""
    }
    
}

extension User: CustomDebugStringConvertible {
    var debugDescription: String {
        return """
        ID:\(id)
        First Name:\(firstName)
        Last Name:\(lastName)
        Email:\(email)
        """
    }
}
