//
//  NavigationMenu.swift
//  App-01
//
//  Created by Jorge on 23/08/24.
//

import SwiftUI

struct NavigationMenu: View {
    
    @Binding var isShowing: Bool
    @Binding var selectedTab: SideMenuOptionModel
    @State private var selectedOption: SideMenuOptionModel?
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture{ isShowing.toggle() }
                
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        SideMenuHeaderView(student: Student.defaultValue)
                        
                        VStack {
                            ForEach(SideMenuOptionModel.allCases) { option in
                                Button(action: {
                                    onOptionTapped(option)
                                }, label: {
                                    SideMenuRowView(option: option, selectedOption: $selectedOption)
                                })
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 285, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
    
    private func onOptionTapped(_ option: SideMenuOptionModel) {
        selectedOption = option
        selectedTab = option
        isShowing = false
    }
}

#Preview {
    NavigationMenu(isShowing: .constant(true), selectedTab: .constant(.courses))
}
