//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ken Muyesu on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
            
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .background(.red)
            .frame(width: 200, height: 200)
            
            Text("Hello, world!")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
                .padding()
            
            Button("Hello, citixenken") {
                //flip boolean
                useRedText.toggle()
            }
            .foregroundColor(useRedText ? .red : .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
