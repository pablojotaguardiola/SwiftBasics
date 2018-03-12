//
//  String+removeSymbols.swift
//  EnglishLearning
//
//  Created by Pablo Guardiola on 17/12/2017.
//  Copyright © 2017 Pablo Guardiola. All rights reserved.
//

import Foundation

extension String {
    
    public func removeSymbols() -> String {
        let symbolReplacing: [String: String] = [
            ".": "",
            ",": "",
            "?": "",
            "¿": "",
            "!": "",
            "¡": "",
            "(": "",
            ")": "",
            "\'": "’"
        ]
        
        var text = self
        
        text = text.folding(options: .diacriticInsensitive, locale: .current)
        
        for (key, value) in symbolReplacing {
            text = text.replacingOccurrences(of: key, with: value, options: NSString.CompareOptions.literal, range: nil)
        }
        
        return text
    }
    
    public func isFirstCapitalized() -> Bool {
        
        guard self.count > 0 else {
            return false
        }
        
        let firstIndex = self.index(self.startIndex, offsetBy: 1)
        return String(self[self.startIndex..<firstIndex]) == String(self[self.startIndex..<firstIndex]).uppercased()
    }
}
