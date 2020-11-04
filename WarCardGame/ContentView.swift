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
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack {
                    ForEach(0..<scoreCounter1) { _ in
                        Image(systemName: "circle.fill").foregroundColor(.white)
                    }
                }
                Text("Computer: \(user1Num)")
                    .padding()
                
                
                
                Button(action: {
                    submit()
                }, label: {
                    Image(systemName: "circle.fill").foregroundColor(.white)
                })
                
                Text("You: \(user2Num)")
                    .padding()
                ForEach(0..<scoreCounter2) {_ in
                    Text("I")
                        .padding()
                }
            }
        }
    }
    func submit() {
        if turnCounter < 25 {
            if user1Num > user2Num {
                scoreCounter1 += 1
                setNumbers()
            }
            else  {
                scoreCounter2 += 1
                setNumbers()
            }
        }
        else {
            if scoreCounter1 > scoreCounter2 {
                
            }
            else if scoreCounter2 > scoreCounter2 {
                
            }
        }
    }
    func setNumbers(){
        turnCounter += 1
        user1Num = Int.random(in: 2...10)
        user2Num = Int.random(in: 2...10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
