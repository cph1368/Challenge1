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
                            .modifier(Header1())
                            .frame(maxWidth: .infinity, alignment: .leading)
                
                        Spacer()
                        Button{}label:{
                            Text("Edit")
                                .modifier(TextRed())
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
                        .modifier(Header2())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Card ending in ...1234")
                            .padding(.top, 1)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .modifier(TextGray())
                    
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

