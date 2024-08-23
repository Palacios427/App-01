//
//  Course.swift
//  app-01
//
//  Created by Jorge on 07/08/24.
//

import SwiftUI

struct Course: Identifiable, Hashable {
    
    var id: UUID = UUID()
    var course: String
    var name: String
    var semester: Int
    var startDate: Date
    var endDate: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(name)
        hasher.combine(semester)
        hasher.combine(startDate)
        hasher.combine(endDate)
    }
    
}

extension Course {
    
    static var defaultValue = Course(course: "TC2007B", name: "Móviles", semester: 5, startDate: Date(), endDate: Date())
    
}
