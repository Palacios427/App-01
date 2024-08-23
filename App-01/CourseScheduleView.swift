//
//  CourseScheduleView.swift
//  app-01
//
//  Created by Jorge on 19/08/24.
//

import SwiftUI

struct CourseScheduleView: View {
    
    @State var days: [Days] = []
    @State var startTime: Date = Date.now
    @State var duration: Int = 2
    @State var durationFloat: Float = 2.0
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Days.allCases, id: \.self) { day in Text(day.shortName)
                        .padding()
                        .background(days.contains(day) ? day.color.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .onTapGesture {
                            print(day.name)
                            if (days.contains(day)) {
                                days.removeAll(where: { $0 == day})
                            } else {
                                days.append(day)
                            }
                            print(days)
                        }
                    
                }
            }
        }
        DatePicker("Hora de Inicio", selection: $startTime, displayedComponents: .hourAndMinute)
            .padding()
            .labelsHidden()
            .datePickerStyle(.compact)
        Stepper("Numero de horas: \(duration)", value: $duration, in: 2...4)
            .padding()
        Text("Duracion: \(String(format: "%.2f", durationFloat))")
        Slider(value: $durationFloat, in:2...4, step: 1)
            .padding()
            .padding(.horizontal, 60)
    }
}


#Preview {
    CourseScheduleView()
}
