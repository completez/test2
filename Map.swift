//
//  SwiftUIView.swift
//  Project Swift
//
//  Created by Admin on 16/6/2567 BE.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack {
            Circle()
                
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            Spacer()
            Text("f")
            
        }.padding()
        Spacer()
        HStack{
            Image("Image")
            
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees(90))
                .offset(x:-120)
            Spacer()
            
        }.padding()
        Spacer()
        HStack {
            Circle()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            Spacer()
            
        }.padding()
    }
}

#Preview {
    SwiftUIView()
}
