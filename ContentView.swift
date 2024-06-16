//
//  ContentView.swift
//  Project Swift
//
//  Created by Admin on 15/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var selectionFirst:String = ""
    @State var selectionTwo:String = ""
    @State var selectPriceTime:String = ""
    let data =
    ["สยาม","สามย่าน","ดอนเมือง","สุวรรณภูมิ"]
    
    var body: some View {
        
        HStack {
            Text("Name App")
                .font(.largeTitle)
            Spacer()
        }.padding()
        HStack{
            Text("เลือกต้นทาง")
            Picker("Test",selection: $selectionFirst) {
                ForEach(data , id: \.self) {
                    Text($0)
                }
            }
            
            Spacer()
            VStack{
                Text("ราคา / เวลา")
                Picker("ราคา / เวลา", selection: $selectPriceTime) {
                ForEach(sortedData, id: \.id) { route in
                    Text("\(route.price) บาท / \(route.time) นาที")
                }
            }
            .pickerStyle(MenuPickerStyle()) // You can change the picker style as needed
            
            }
        }.padding()
        HStack{
            Text("เลือกปลายทาง")
            Picker("Test",selection: $selectionTwo) {
                ForEach(data , id: \.self) {
                    Text($0)
                        
                }
            }
            Spacer()
            
        }.padding()
        Spacer()
        
        if (selectionTwo.isEmpty || selectionFirst.isEmpty) {
            Text("กรุณาเลือกเส้นทาง")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        ForEach (sortedData) {
            dataAll in
            if (!selectionTwo.isEmpty && !selectionFirst.isEmpty) && (selectionFirst != selectionTwo) && (dataAll.name1 == selectionFirst && dataAll.name2 == selectionTwo){
                Text("\(selectionFirst) - \(selectionTwo) ใช้ระยะเวลา \(dataAll.time) นาที ราคา \(dataAll.price)")
            }
            
                
            Spacer()
                .frame(height: 30)

        }
       
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
