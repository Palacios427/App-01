//
//  SideMenuOptionModel.swift
//  App-01
//
//  Created by Jorge on 29/08/24.
//

import Foundation
import SwiftUI

enum SideMenuOptionModel: Int, CaseIterable {
    case courses
    case calendar
    case profile
    
    var title: String {
        switch self {
        case .courses:
            return "Courses"
        case .calendar:
            return "calendar"
        case .profile:
            return "Profile"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .courses:
            return "list.clipboard"
        case .calendar:
            return "calendar"
        case .profile:
            return "person"
        }
    }
}

extension SideMenuOptionModel: Identifiable {
    var id: Int {return self.rawValue}
}
