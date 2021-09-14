//
//  ContentView.swift
//  Classic04
//
//  Created by kai wen chen on 2021/9/14.
//

import SwiftUI

struct ContentView: View {
    
    @State var number = 0
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                Button(action: {
                    number += 1
                    //number = number + 1
                }, label: {
                    Text("變更數值")
                })
                
                List {
                    ForEach(textStrings) { item in
                        NavigationLink(
                            destination: NavigationLink(
                                destination: titleImg(img: item.img),
                                label: {
                                    Text("目的\(item.title)")
                                }),
                            label: {
                                VStack {
                                    Text("同一個Struct ContentView \(number)")
                                    firstTitle(number1: number, img: item.img, title: item.title,  number2: $number)
                                }
                            })
                    }
                }
                .navigationTitle(Text("計程車班表"))
                //.listStyle(InsetGroupedListStyle())
            }
            //表單類型
            /*
             CarouselListStyle
             DefaultListStyle
             EllipticalListStyle //watchOS 7.0+
             GroupedListStyle
             InsetGroupedListStyle
             InsetListStyle
             PlainListStyle
             SidebarListStyle
             */
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct textString:Identifiable {
    var id = UUID()
    var title:String
    var img:String
}

let textStrings = [     //陣列
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill"),
    textString(title: "Hello, World!", img: "car.fill")
]



struct firstTitle: View {
    @State var number1 = 0
    @State var img = ""
    @State var title = ""
    @Binding var number2:Int
    
    var body: some View {
        HStack {
            Image(systemName: img)
            Text("number1 \(number1) |")
            Text("Bindding number2 \(number2)")
        }
    }
}
