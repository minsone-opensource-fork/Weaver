//
//  AccessLevel.swift
//  WeaverCodeGen
//
//  Created by Théophane Rupin on 5/7/18.
//

import Foundation

public enum AccessLevel: String, CaseIterable {
    case `public`
    case `open`
    case `internal`
    
    static let `default`: AccessLevel = .`internal`
    
    var isPublic: Bool {
        switch self {
        case .public,
             .open:
            return true
        case .internal:
            return false
        }
    }
}
