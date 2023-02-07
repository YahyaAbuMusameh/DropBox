//
//  GlobalConstants.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/25/22.
//

import Foundation
import UIKit

class GlobalConstants {
    enum Menu {
        case home
        case profile
        case storage
        case shared
        case status
        case settings
        case help
        
        var name: String {
            switch self {
            case .home:
                return "Home"
            case .profile:
                return "Profile"
            case .storage:
                return "Storage"
            case .shared:
                return "Shared"
            case .status:
                return "Status"
            case .settings:
                return "Settings"
            case .help:
                return "Help"
            }
        }
    }
}
