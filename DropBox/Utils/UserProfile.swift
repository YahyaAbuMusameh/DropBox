//
//  UserProfile.swift
//  DropBox
//
//  Created by Eng. Yahya M. Abu Musameh on 3/25/22.
//

import Foundation
import UIKit

class UserProfile {
    static let shared = UserProfile()
    var isRTL: Bool {
        return UIApplication.shared.userInterfaceLayoutDirection == .rightToLeft
    }
}
