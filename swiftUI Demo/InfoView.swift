//
//  InfoView.swift
//  swiftUI Demo
//
//  Created by Gajender Jangir on 20/04/22.
//

import SwiftUI

struct InfoView: View {
    var imageName:String
    var phoneNum:String
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(.white))
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName).foregroundColor(.teal)
                    Text(phoneNum)
                }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", phoneNum: "lala")
            .previewLayout(.sizeThatFits)
           
    }
}
