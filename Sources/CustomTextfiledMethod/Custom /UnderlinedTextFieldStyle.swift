//
//  UnderlinedTextFieldStyle.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 21/04/23.
//

import Foundation
import SwiftUI

public struct UnderlinedTextFieldStyle: View {
    
    @State var placeHolderName: String
    @Binding var text: String
    @State var keyBoardType: UIKeyboardType
    @State var imageStyle: ImageTextfiled
    @State var isCloseBtn : Bool
    @State var sfImage: String?
    @State var cImage: String?
    
    public var body: some View {
        HStack {
            
            if imageStyle == .sfImage {
                if sfImage != nil {
                    Image(systemName: sfImage!)
                        .foregroundColor(Color(UIColor.systemGray4))
                }
            }
            else if imageStyle == .customImage {
                if cImage != nil {
                    Image(cImage!)
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color(UIColor.systemGray2))
                }
            }
            
            TextField(placeHolderName, text: $text)
                .autocorrectionDisabled(true)
                .keyboardType(keyBoardType)
            
            //NOTE: - display Close button
            if isCloseBtn {
                
                //check the Empty textfiled
                if !text.isEmpty {
                    
                    Button {
                        //make empty textfiled data
                        text = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            
        }
        .padding(.vertical, 8)
        .background(
            VStack {
                Spacer()
                Color(UIColor.systemGray4)
                    .frame(height: 2)
            })
    }
}
