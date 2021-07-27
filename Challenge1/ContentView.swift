//
//  ContentView.swift
//  Challenge1
//
//  Created by Corry Handayani on 26/7/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // may have to change to ScrollView
        VStack {
            AccountType()
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


