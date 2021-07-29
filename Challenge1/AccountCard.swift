//
//  AccountCard.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

struct AccountCard: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Westpac Choice")
                    .fontWeight(.regular)
                Spacer()
                Text("$50,342.00")
                    .fontWeight(.semibold)
            }
            .padding(.bottom,4)
            .modifier(Header2())
            //.frame(maxWidth: .infinity, alignment: .leading)
            // added alignment on Vstack - code efficiency
            
            Text("Card ending in ...1234")
                .modifier(TextGray())
            
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color("LightGray")))
    }
}


struct AccountCard_Previews: PreviewProvider {
    static var previews: some View {
        AccountCard()
    }
}
