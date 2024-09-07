//
//  ClockView.swift
//  ClockApp
//
//  Created by Waqas Raza on 10/01/2024.
//

import SwiftUI

struct ClockView: View {
    @State private var currentTime = Date()
    
    let numbers = [1, 2 , 3 , 4 , 5]
    
    
    init(){
        findMinimumValue(in: numbers)
        
    }
    
    
    var originalArray = [1, 2, 3, 4, 5]
    var reversedArray: [Int] = []
    
    var body: some View {
        VStack {
            
            HStack {
                
                Button{
                    
                } label: {
                    
                    Image("Plus Icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.leading, 20)
                    
                    
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    
                    Image("Edit Icon")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 20)
                    
                    
                }
                
            }
            .padding(.top, 20)
            
            Spacer()
            
            Image(.clockBg)
                .overlay(alignment: .center, content: {
                    
                    ZStack {
                        
                        Color.white
                            .frame(width: 6, height: 60)
                            .cornerRadius(3)
                            .offset(y: -25)
                            .rotationEffect(.degrees(Double(Calendar.current.component(.hour, from: currentTime)) * 30))
                        
                        Color.white
                            .frame(width: 4, height: 100)
                            .cornerRadius(3)
                            .offset(y: -25)
                            .rotationEffect(.degrees(Double(Calendar.current.component(.minute, from: currentTime)) * 6))
                        
                        Color.pink
                            .frame(width: 2, height: 120)
                            .cornerRadius(3)
                            .offset(y: -38)
                            .rotationEffect(.degrees(Double(Calendar.current.component(.second, from: currentTime)) * 6))
                        
                        
                    }
                    .offset(x:-5)
                    
                })
            
            Text("Lahore")
                .foregroundColor(.purple)
                .font(.title)
                .padding()
            
            Text(getTime())
                .font(.title)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
        }.background(Color("appColor"))
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                    currentTime = Date()
                }
            }
    }

    
    func getTime() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter.string(from: currentTime)
    }
    

    func findMinimumValue(in array: [Int]) -> Int? {
        
        guard !array.isEmpty else { return nil }
        
        var minValue = array[0]
        
        for number in array {
            if number < minValue {
                minValue = number
                
            }
           
        }
        print(minValue)
            return minValue
       
    }



}

#Preview {
    ClockView()
}
