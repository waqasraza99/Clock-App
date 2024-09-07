//
//  ListView.swift
//  ClockApp
//
//  Created by Waqas Raza on 10/01/2024.
//

import SwiftUI

struct ListView: View {
    
    @State private var selectedTimeZone = TimeZone.current
       private var timeZones: [TimeZone] {
           return TimeZone.knownTimeZoneIdentifiers.compactMap { TimeZone(identifier: $0) }
       }
    
    var body: some View {
        ZStack{
            VStack{
                HStack {
                               Image("Plus Icon")
                                   .resizable()
                                   .frame(width: 40, height: 40)
                                   .padding(.leading, 20)
                                   .onTapGesture {
                                       // Handle plus button tap action
                                       print("Plus button tapped")
                                   }

                               Spacer()

                               Image("Edit Icon")
                                   .resizable()
                                   .frame(width: 40, height: 40)
                                   .padding(.trailing, 20)
                                   .onTapGesture {
                                       // Handle edit button tap action
                                       print("Edit button tapped")
                                   }
                           }
                           .padding(.top, 20)
                
                
                ScrollView {
                    ForEach(0..<timeZones.count,id:\.self){ index in
                        
                        var timeZone = timeZones[index]
                        
                        VStack{
                            HStack{
                                Text(timeZone.identifier)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                
                                Spacer()
                               
                                Text("04:15 AM")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                            }
                            HStack{
                                Text("-1:30")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.gray)
                                Spacer()
                                Text("Today")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                            }
                            
                            Divider()
                            
                        }.padding()
                    }
                }
               
                
                Spacer()
            }
        }
    }
}

#Preview {
    ListView()
}
