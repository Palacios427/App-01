//
//  ContentView.swift
//  app-01
//
//  Created by Jorge on 06/08/24.
//

import SwiftUI

struct ScheduleView: View {
    
    @Environment(Student.self) private var student
    @Environment(Courses.self) private var courses
    @State var showEditView: Bool = false
    @State private var showMenu = false
    
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
                NavigationMenu(isShowing: $showMenu)
                
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
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                    .foregroundColor(.blue)
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
    ScheduleView()
        .environment(Student.defaultValue)
        .environment(Courses())
}
