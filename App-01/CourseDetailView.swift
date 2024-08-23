//
//  CourseDetailView.swift
//  app-01
//
//  Created by Jorge on 13/08/24.
//

import SwiftUI

struct CourseDetailView: View {
    
    @Environment(Courses.self) private var courses
    @Environment(\.dismiss) private var dismiss
    @State var course: Course
    
    
    var body: some View {
        VStack {
            Text("Curso:")
            TextField("Curso", text: $course.course)
                .textFieldStyle(.roundedBorder)
            Text("Nombre del Curso:")
            TextField("Nombre del Curso", text: $course.name)
                .textFieldStyle(.roundedBorder)

            DatePicker("Fecha de inicio", selection: $course.startDate, displayedComponents: .date)
            Spacer()
            Button {
                if let index = courses.courses.firstIndex(where: { $0.id == course.id }) {
                    print("Hola \(index)")
                    courses.courses[index].course = course.course
                    print(course.course)
                    print(courses.courses[index].course)
                }
                dismiss()
            } label: {
                Text("Guardar")
            }
            .buttonStyle(.bordered)
        }
        .padding(.horizontal,20)
        
    }
    
    func saveCourse() {
        
    }
}

#Preview {
    CourseDetailView(course: Course.defaultValue)
        .environment(Courses())
}
