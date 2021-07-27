//
//  AccountType.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

struct AccountType: View {
    var body: some View {
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
                .stroke(Color("LightGray"), lineWidth: 1))
    }
}


struct AccountType_Previews: PreviewProvider {
    static var previews: some View {
        AccountType()
    }
}
