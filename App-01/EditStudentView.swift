//
//  EditStudentView.swift
//  app-01
//
//  Created by Jorge on 07/08/24.
//

import SwiftUI

struct EditStudentView: View {
    
    @Bindable var student: Student
    
    var body: some View {
        VStack {
            Text("Edita la matrícula")
            TextField("Alumno", text: $student.studentID)
                .textFieldStyle(.roundedBorder)
            Text("Edita el nombre del alumno")
            TextField("Alumno", text: $student.name)
                .textFieldStyle(.roundedBorder)
            Text("Edita la carrera")
            TextField("Alumno", text: $student.program)
                .textFieldStyle(.roundedBorder)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    EditStudentView(student: Student.defaultValue)
}
