//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ken Muyesu on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var useGreenText = true
    
    @ViewBuilder var movie: some View { //@ViewBuilder mimics the way body works
        Text("Lord of the Rings")
        Text("The Two Towers")
    }
    var title: some View {
        Text("Lord of the Rings")
    }

    var heading: some View {
        Text("The Return of the King")
    }
    
//    let title = Text("Lord of the Rings")
//    let heading = Text("The Return of the King")
    
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
            VStack {
                Text("Gryffindor")
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
                    .font(.title2) //overrides environment modiifier
                    .blur(radius: 0) //won't work coz blur is a regular modifier
            }
            .font(.title) //environment modifier
            .blur(radius: 5)
            
            VStack {
                title
                    .foregroundStyle(.primary)
                heading
                    .foregroundStyle(.secondary)
            }
            
            movie
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
