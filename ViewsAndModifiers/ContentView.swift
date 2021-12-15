//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ken Muyesu on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var useGreenText = true
    
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
            Button("Click me!") {
                //do something
                useGreenText.toggle()
            }
            .foregroundColor(useGreenText ? .green : .red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
