//
//  ContentView.swift
//  Challenge1
//
//  Created by Corry Handayani on 26/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // may have to change to ScrollView
        VStack {
            VStack{
               //Top card
                VStack {
                    
                    TopSection()
             
                    //one customer may have many accounts
                    AccountCard()
                    
                }
                .padding([.top, .leading, .trailing])
                .padding(.bottom, 10)
                
                BottomCard()
 
            }
            .background(Color.white)
            .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color("LightGray"), lineWidth: 1))            }
        .padding()
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
    
        }
    }
}




