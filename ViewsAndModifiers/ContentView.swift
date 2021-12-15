//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Ken Muyesu on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 10) {
            Color.blue
                .frame(width: 400, height: 200)
                .watermarked(with: "Essential Swift Fundamentals")
            
            Text("Here we go!!!")
                //.modifier(Title())
                .titleStyle()
            
            CapsuleText(text: "Numero")
                .modifier(Title())
                //.foregroundColor(.primary)
            CapsuleText(text: "Uno")
                .foregroundColor(.secondary)
            
//            Text("Numero")
//                .font(.largeTitle)
//                .padding()
//                .foregroundColor(.primary)
//                .background(.green)
//                .clipShape(Capsule())
//            Text("Uno")
//                .font(.largeTitle)
//                .padding()
//                .foregroundColor(.secondary)
//                .background(.green)
//                .clipShape(Capsule())
        }
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.green)
            .clipShape(Capsule())
    }
}

//custom modifier
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}


struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack (alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.subheadline)
                .foregroundColor(.white)
                .padding()
                .background(.mint)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}
//struct ContentView: View {
//    @State var useGreenText = true
//
//    @ViewBuilder var movie: some View { //@ViewBuilder mimics the way body works
//        Text("Lord of the Rings")
//        Text("The Two Towers")
//    }
//    var title: some View {
//        Text("Lord of the Rings")
//    }
//
//    var heading: some View {
//        Text("The Return of the King")
//    }
//
////    let title = Text("Lord of the Rings")
////    let heading = Text("The Return of the King")
//
//    var body: some View {
//        VStack {
//            Text("Hello, world!")
//                .padding()
//
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(.red)
//
//            Button("Hello, world!") {
//                print(type(of: self.body))
//            }
//            .background(.red)
//            .frame(width: 200, height: 200)
//
//            Text("Hello, world!")
//                .padding()
//                .background(.red)
//                .padding()
//                .background(.blue)
//                .padding()
//                .background(.green)
//                .padding()
//                .background(.yellow)
//                .padding()
//            Button("Click me!") {
//                //do something
//                useGreenText.toggle()
//            }
//            .foregroundColor(useGreenText ? .green : .red)
//            VStack {
//                Text("Gryffindor")
//                Text("Hufflepuff")
//                Text("Ravenclaw")
//                Text("Slytherin")
//                    .font(.title2) //overrides environment modiifier
//                    .blur(radius: 0) //won't work coz blur is a regular modifier
//            }
//            .font(.title) //environment modifier
//            .blur(radius: 5)
//
//            VStack {
//                title
//                    .foregroundStyle(.primary)
//                heading
//                    .foregroundStyle(.secondary)
//            }
//
//            movie
//
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
