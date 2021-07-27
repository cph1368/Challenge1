//
//  ContentView.swift
//  Challenge1
//
//  Created by Corry Handayani on 26/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            
            VStack{
                
               //Top card
                VStack {
                    HStack{
                        Text("Offset account")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                
                        Spacer()
                        Button{}label:{
                            Text("Edit")
                                .foregroundColor(Color("Red"))
                        }
                    }
                    .padding(.bottom,5)
             
                    VStack{
                     
                        HStack {
                            Text("Westpac Choice")
                                .fontWeight(.regular)
                            Spacer()
                            Text("$50,342.00")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(Color("Dark"))
                        .font(.system(size: 17))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Card ending in ...1234")
                            .padding(.top, 5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 13))
                            .foregroundColor(Color("DarkGray"))
                    }
                    .padding(.vertical,16)
                    .padding(.horizontal,16)
                    .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color("LightGray")))
                    
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

struct BottomCard: View {
    var body: some View {
        HStack {
            Text("How is your Offset helping you save?")
                .font(.system(size: 13))
                .foregroundColor(Color("DarkGray"))
                .padding(.leading)
            
            Spacer()
            Button{} label:{
                Text("Explore")
                    .padding(10)
                    .background(Color.white)
                    .foregroundColor(Color("Dark"))
                    .font(.caption)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("Red"), lineWidth: 1))
                
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 16)
            
            
        }
        .background(Color("AccentColor"))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
