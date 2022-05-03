//
//  ContentView.swift
//  RadioButtonListSwiftUI
//
//  Created by naresh kukkala on 03/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedChoice: String = ""
    let choices = ["Student", "Staff", "Faculty"]
    
    var body: some View {
        List(choices, id: \.self) { choice in
            HStack {
                Text(choice)
                Spacer()
                // circle.inset.filled
                Image(systemName: selectedChoice == choice ? "smallcircle.fill.circle": "circle")
                    .onTapGesture {
                        selectedChoice = choice
                    }.font(.title)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
