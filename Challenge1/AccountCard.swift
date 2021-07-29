//
//  AccountCard.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

struct AccountCard: View {
    var body: some View {
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
        .padding()
       // .padding(.horizontal,16)
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
