//
//  TopSection.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

struct TopSection: View {
    var body: some View {
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
    }
}

struct TopSection_Previews: PreviewProvider {
    static var previews: some View {
        TopSection()
    }
}
