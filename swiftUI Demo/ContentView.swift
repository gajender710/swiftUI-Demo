//
//  ContentView.swift
//  swiftUI Demo
//
//  Created by Gajender Jangir on 20/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color(UIColor(.teal))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)


            VStack {
                
                Image("anakin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                    .frame(width: 200, height: 200, alignment: .top)
                    .border(.white, width: 8)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                Text("HELLO")
                    .font(.title)
                    .bold()
                    . foregroundColor(.white)
                Text("World")
                    .font(.system(size: 20))
                
                Divider()

                InfoView(imageName: "phone.fill",phoneNum: "+91 78232 87231")
                InfoView(imageName: "envelope.fill",phoneNum: "jack12@gmail.com")
    
            }
           
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TweetView: View {
    var name:String
    var message:String
    var body: some View {
        HStack {
            Image("tweety")
                .resizable(
                ).frame(width: 80, height: 80)
                .foregroundColor(.brown)
            
            VStack {
                Text(name)
                    .font(.title)
                Text(message)
                    .foregroundColor(.gray)
            }
        }
    }
}

