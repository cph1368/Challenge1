//
//  ContentView.swift
//  Challenge1
//
//  Created by Corry Handayani on 26/7/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var accountVM = AccountViewModel()
    
    var body: some View {
        //initialise class inside state object
        
    //Initially trying this to load firestore db
     // ForEach(accountVM.account, id: \.id) {
     //   account in
      //    Text(account.acctype)}
        
        VStack {
            
            ForEach(accountVM.account, id: \.id) {
                account in
           
            VStack{
                //testing to see if the data load correctly
               //Top card
                VStack {
                    
                    TopSection()
             
                    //one customer may have many accounts
                    // account card
                    VStack(alignment: .leading){
                        HStack{
                            Text(account.acctype)
                                .fontWeight(.regular)
                            Spacer()
                            Text(account.balance)
                                .fontWeight(.semibold)
                        }
                        .padding(.bottom,4)
                        .modifier(Header2())
                        //.frame(maxWidth: .infinity, alignment: .leading)
                        // added alignment on Vstack - code efficiency
                        
                        Text("Card ending in ...\(account.cardnum)")
                            .modifier(TextGray())
                        
                    }
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("LightGray")))
                       
                    
                }
                .padding([.top, .leading, .trailing])
                .padding(.bottom, 8)
                
                BottomCard()
 
            }
            .background(Color.white)
            .cornerRadius(3)
            // using corner radius to cut it off  before overlay
            .overlay(
            RoundedRectangle(cornerRadius:3)
                .stroke(Color("LightGray"), lineWidth: 1))            }
            
            //end Vstack
            
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




