//
//  TextStyleGuide.swift
//  Challenge1
//
//  Created by Corry Handayani on 28/7/21.
//

import SwiftUI

struct Header1: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundColor(Color("Blue"))
    }
}
struct Header2: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .foregroundColor(Color("Dark"))
    }
}

struct TextSmall: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .foregroundColor(Color("Dark"))
    }
}

struct TextGray: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .foregroundColor(Color("DarkGray"))
    }
}
struct TextRed: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 13))
            .foregroundColor(Color("Red"))
    }
}


struct TextStyleGuide: View {
    var body: some View {
        VStack{
            Text("Title Style Blue")
                .modifier(Header1())
            
            Text("Title Style")
                .modifier(Header2())
            
            Text("Title Style")
                .modifier(TextSmall())
            
            Text("Title Style")
                .modifier(TextGray())
            
            Text("Title Style")
                .modifier(TextRed())

        }
    }
}



struct TextStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleGuide()
    }
}
