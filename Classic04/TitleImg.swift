//
//  TitleImg.swift
//  Classic04
//
//  Created by kai wen chen on 2021/9/14.
//

import SwiftUI

struct titleImg: View {
    
    var img = "car.2"
    
    var body: some View {
        VStack {
            Text("Hello")
                .font(.title)
            Image(systemName: img)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
        }
    }
}


struct TitleImg_Previews: PreviewProvider {
    static var previews: some View {
        titleImg()
    }
}
