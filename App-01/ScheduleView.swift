//
//  ContentView.swift
//  app-01
//
//  Created by Jorge on 06/08/24.
//

import SwiftUI

struct ScheduleView1: View {
    
    @Environment(Student.self) private var student
    @Environment(Courses.self) private var courses
    
    var body: some View {
        NavigationStack {
            ZStack {
                //            Color.mint
                    VStack {
                        List {
                            ForEach(courses.courses) { course in
                                NavigationLink(value: course) {
                                    VStack {
                                        HStack {
                                            Text(course.course)
                                            Text(course.name)
                                        }
                                    }
                                }
                                    
                            }
                        }
                        .padding(.top, 20)
                        .listStyle(.inset)
                    }
            }
//            .ignoresSafeArea()
            .navigationTitle(student.name)
            .toolbarBackground(Color.pink, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(value: student) {
                        Image(systemName: "person.fill")
                            .foregroundStyle(Color.blue)
                    }
                }
            }
            .navigationDestination(for: Student.self) { student in
                EditStudentView(student: student)
            }
            .navigationDestination(for: Course.self) { course in
                CourseDetailView(course: course)
            }
        }
    }
}

#Preview {
    ScheduleView1()
        .environment(Student.defaultValue)
        .environment(Courses())
}
