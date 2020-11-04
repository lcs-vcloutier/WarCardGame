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
    @State private var showingAlert = false
    @State private var winnerAlertMSG = ""
    
    var body: some View {
        ZStack  {
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
    
               
                Text("Computer: \(user1Num)")
                    .padding()
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.white)
                    .cornerRadius(10)
            
                Button(action: {
                    submit()
                }, label: {
                    Text("WAR")
                        .padding()
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .background(Color.white)
                        .cornerRadius(10)
                })
                
                Text("You: \(user2Num)")
                    .padding()
                    .foregroundColor(.black)
                    .font(.title)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                
            }
        }.alert(isPresented: $showingAlert) {
            Alert(title: Text(winnerAlertMSG), dismissButton: .default(Text("Got it!")))
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
                alert(winner: "You Lost!")
            }
            else if scoreCounter2 > scoreCounter1 {
                alert(winner: "You Won!")
            }
        }
    }
    func setNumbers(){
        turnCounter += 1
        user1Num = Int.random(in: 2...10)
        user2Num = Int.random(in: 2...10)
    }
    func alert(winner: String){
        self.showingAlert = true
        winnerAlertMSG = winner
        user1Num = 0
        scoreCounter1 = 0
        user2Num = 0
        scoreCounter2 = 0
        turnCounter = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
