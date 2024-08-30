//
//  SideMenuHeaderView.swift
//  App-01
//
//  Created by Jorge on 23/08/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Bindable var student: Student
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("\(student.name) - \(student.program)")
                    .font(.headline)
                
                Text(student.studentID)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    SideMenuHeaderView(student: Student.defaultValue)
}
