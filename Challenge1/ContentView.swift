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
                                .foregroundColor(Color(#colorLiteral(red: 0.8567307591, green: 0.09233617038, blue: 0.06178631634, alpha: 1)))
                        }
                    }
                    .padding(.bottom,5)
             
                    VStack{
                     
                        HStack {
                            Text("Westpac Choice")
                                .fontWeight(.regular)
                                .font(.system(size: 17))
                            Spacer()
                            Text("$50,342.00")
                                .font(.system(size: 17))
                                .fontWeight(.semibold)
                     
                    
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Card ending in ...1234")
                            .padding(.top, 5)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 13))
                            .foregroundColor(Color(#colorLiteral(red: 0.3411460817, green: 0.3321097195, blue: 0.3942255974, alpha: 1)))
                    }
                    .padding(.vertical,16)
                    .padding(.horizontal,16)
                    .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color(#colorLiteral(red: 0.9527085423, green: 0.9567916989, blue: 0.9649575353, alpha: 1))))
                    
                }
                .padding([.top, .leading, .trailing])
                .padding(.bottom, 10)
                
    
           
                HStack {
                    Text("How is your Offset helping you save?")
                        .font(.system(size: 13))
                        .foregroundColor(Color(#colorLiteral(red: 0.3411460817, green: 0.3321097195, blue: 0.3942255974, alpha: 1)))
                        .padding(.leading)
                        
                
                        
                    Spacer()
                    Button{} label:{
                        Text("Explore")
                            .cornerRadius(3.0)
                            .padding(10)
                            .foregroundColor(.black)
                            .font(.caption)
                            .overlay(
                            RoundedRectangle(cornerRadius: 3)
                                .stroke(Color(#colorLiteral(red: 0.8567307591, green: 0.09233617038, blue: 0.06178631634, alpha: 1)), lineWidth: 1))
                          
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
                    
            
                }
                .background(Color(#colorLiteral(red: 0.9527085423, green: 0.9567916989, blue: 0.9649575353, alpha: 1)))
                .frame(maxWidth: .infinity, alignment: .leading)
                   
            
       
            }
            .background(Color.white)
            .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(#colorLiteral(red: 0.8745185137, green: 0.8706271648, blue: 0.8704374433, alpha: 1)), lineWidth: 1))            }
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
