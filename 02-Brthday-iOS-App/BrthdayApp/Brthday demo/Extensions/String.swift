//
//  String.swift
//  Brthday demo
//
//  Created by Jaden Smith on 2023-05-09.
//

import Foundation

extension String {
    func isValidEmail() -> Bool {
        // test@email.com -> true
        // test.com -> false
        
        guard let regex = try? NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive) else {
            return false
        }

        return regex.firstMatch(in: self, range: NSRange(location: 0, length: utf16.count)) != nil
        
    }
}
