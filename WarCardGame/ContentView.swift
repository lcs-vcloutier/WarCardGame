//
//  ContentView.swift
//  WarCardGame
//
//  Created by Cloutier, Vincent on 2020-11-04.
//

import SwiftUI

struct ContentView: View {
    @State private var user1Num = 0
    @State private var scoreCounter1 = 0
    @State private var user2Num = 0
    @State private var scoreCounter2 = 0
    @State private var turnCounter = 0
    var body: some View {
            ZStack  {
                LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                Text("War")
                    .font(.title)
                    .fontWeight(.bold)
        

                VStack{
                    HStack(alignment: .top, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        Text(String(user1Num))
                            .padding()
                        Text(String(user2Num))
                            .padding()
                    })
                    
                    
                    Button(action: {
                        submit()
                    }, label: {
                        Image(systemName: "circle.fill").foregroundColor(.white)
                    })
                    HStack{
                        Text(String(scoreCounter1))
                            .padding()
                        Text(String(scoreCounter2))
                            .padding()
                    }
                }
                
            }
        }
    }
    func submit() {
        if turnCounter <= 25 {
            if user1Num > user2Num {
                scoreCounter1 += user1Num - user2Num
            }
            else if user2Num > user1Num {
                scoreCounter2 += user2Num - user1Num
            }
            user1Num = Int.random(in: 2...10)
            user2Num = Int.random(in: 2...10)
            turnCounter += 1
        }
        else {
            if scoreCounter1 > scoreCounter2 {
                
            }
            else if scoreCounter2 > scoreCounter2 {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
