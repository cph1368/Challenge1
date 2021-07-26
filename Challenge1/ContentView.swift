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
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .frame(maxWidth: .infinity, alignment: .leading)
                
                        Spacer()
                        Button{}label:{
                            Text("Edit")
                                .foregroundColor(.red)
                        }
                    }
                    .padding(.bottom,5)
             
                    VStack{
                     
                        HStack {
                            Text("Westpac Choice")
                            Spacer()
                            Text("$50,342.00")
                     
                    
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Card ending in ...1234")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.caption)
                    }
                    .padding(.vertical,20)
                    .padding(.horizontal,16)
                    .border(Color(#colorLiteral(red: 0.9527085423, green: 0.9567916989, blue: 0.9649575353, alpha: 1)))
                    
                }
                .padding()
    
           
                HStack {
                    Text("How is your Offset helping you save?")
                        .font(.caption)
                        .padding()
                
                        
                    Spacer()
                    Button{} label:{
                        Text("Explore")
                            .cornerRadius(3.0)
                            .padding(10)             .foregroundColor(.black)
                            .font(.caption)
                            .border(Color(#colorLiteral(red: 0.8567307591, green: 0.09233617038, blue: 0.06178631634, alpha: 1)))
                         
                          
                    }
                    .padding()
                    
            
                }
                .background(Color(#colorLiteral(red: 0.9527085423, green: 0.9567916989, blue: 0.9649575353, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                   
            
       
            }
            .background(Color.white)
            .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(#colorLiteral(red: 0.9527085423, green: 0.9567916989, blue: 0.9649575353, alpha: 1)), lineWidth: 1))
        }
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
