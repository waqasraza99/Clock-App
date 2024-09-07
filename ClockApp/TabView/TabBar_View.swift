//
//  TabBar_View.swift
//  Threads
//
//  Created by Waqas Raza on 26/12/2023.
//

import SwiftUI

struct TabBar_View: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            ClockView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "clock.fill" : "clock")
                    Text("Clock")
                }
                .tag(0)
                .accentColor(selectedTab == 0 ? .white : .white)

               
            
            ListView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "line.3.horizontal" : "line.3.horizontal")
                    Text("List")
                }.tag(1)
                
            

           SettingView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "gearshape.fill" : "gearshape")
                    Text("Setting")
                }.tag(2)
     
                
        }.tint(.black)
//
    }
}

#Preview {
    
    TabBar_View()
}
