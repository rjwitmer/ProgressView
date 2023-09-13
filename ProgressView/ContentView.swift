//
//  ContentView.swift
//  ProgressView
//
//  Created by Bob Witmer on 2023-09-13.
//

import SwiftUI

struct ContentView: View {
    @State private var hideProgressView = true
    var body: some View {
        VStack {
            Spacer()
            
            if !hideProgressView {
                ProgressView()
                    .scaleEffect(4)
                    .tint(.red)
            }
            
            Spacer()
            Button("Show / Hide Progress View") {
                hideProgressView.toggle()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
