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
        VStack{
            HStack{
                Text(String(user1Num))
                    .padding()
                Text(String(user2Num))
                    .padding()
            }
            Button(action: {
                submit()
                    }, label: {
                        /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    })
        }
    }
    func submit() {
        if turnCounter >= 52 {
            if user1Num > user2Num {
                scoreCounter1 += user1Num - user2Num
            } else if
        user1Num = Int.random(in: 2...14)
        user2Num = Int.random(in: 2...14)
        turnCounter += 1
        }
        else {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
