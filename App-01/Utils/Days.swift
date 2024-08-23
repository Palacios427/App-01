//
//  Days.swift
//  app-01
//
//  Created by Jorge on 19/08/24.
//

import SwiftUI

enum Days: String, CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    
    
    var name: String {
        switch self {
        case .monday:
            return "Lunes"
        case .tuesday:
            return "Martes"
        case .wednesday:
            return "Miercoles"
        case .thursday:
            return "Jueves"
        case .friday:
            return "Viernes"
        }
    }
    
    
    var shortName: String {
        switch self {
        case .monday:
            return "Lun"
        case .tuesday:
            return "Mar"
        case .wednesday:
            return "Mié"
        case .thursday:
            return "Jue"
        case .friday:
            return "Vie"
        }
    }
    
    
    var number: Int {
        switch self {
        case .monday:
            return 1
        case .tuesday:
            return 2
        case .wednesday:
            return 3
        case .thursday:
            return 4
        case .friday:
            return 5
        }
    }
    
    
    var color: Color {
        switch self {
        case .monday:
            return Color(red: 255/255, green: 179/255, blue: 186/255) // Pastel Red
        case .tuesday:
            return Color(red: 255/255, green: 223/255, blue: 186/255) // Pastel Orange
        case .wednesday:
            return Color(red: 255/255, green: 255/255, blue: 186/255) // Pastel Yellow
        case .thursday:
            return Color(red: 186/255, green: 255/255, blue: 201/255) // Pastel Green
        case .friday:
            return Color(red: 186/255, green: 225/255, blue: 255/255) // Pastel Blue
        }
    }

}
