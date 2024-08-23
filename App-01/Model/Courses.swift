//
//  Courses.swift
//  app-01
//
//  Created by Jorge on 07/08/24.
//

import SwiftUI

@Observable class Courses {
    
    var courses: [Course] = []
    
    init() {
        loadData()
    }
    
    func loadData() {
        courses.append(
            Course(course: "TC2007B", name: "Desarrollo de aplicaciones móviles", semester: 5, startDate: Date(), endDate: Date()))
        courses.append(
            Course(course: "TC2038", name: "Algoritmos Avanzados", semester: 5, startDate: Date(), endDate: Date()))
    }
}
