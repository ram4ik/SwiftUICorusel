//
//  ContentView.swift
//  SwiftUICorusel
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                Text("Menu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack{
                        ForEach(Range(1...4)) { iteration in
                            
                            GeometryReader { proxy in
                                
                                Image("food\(iteration)")
                                .resizable()
                                .scaledToFit()
                                    .frame(width: 200, height: 200)
                                .clipped()
                                .padding()
                                .shadow(radius: 3)
                                    .background(Color.white)
                                .shadow(radius: 3)
                                    .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 20), axis: (x: 100, y: -100, z: 100))
                                
                            }.frame(width: 200, height: 300)
                            
                        }
                    }
                }
                
                
            }
            
            Spacer()
            
        }
        .background(Image("bg").resizable().scaledToFill())
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
