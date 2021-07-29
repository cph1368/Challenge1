//
//  BottomCard.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

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
                    .padding(.vertical, 5)
                    .padding(.horizontal, 8)
                    .background(Color.white)
                    .foregroundColor(Color("Dark"))
                    .font(.caption)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(Color("Red"), lineWidth: 1))
                
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 16)
            
            
        }
        .background(Color("AccentColor"))
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}
