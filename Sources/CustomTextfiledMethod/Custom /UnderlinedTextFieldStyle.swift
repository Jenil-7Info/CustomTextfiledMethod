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
    @State var imageStyle: ImageTextfiled
    @State var textfiledType: TextfiledType
    @State var isCloseBtn : Bool
    @State var sfImage: String?
    @State var cImage: String?
    
    @State  var isShowPass: Bool = false
    
    public var body: some View {
        HStack {
            
            if imageStyle == .sfImage {
                if sfImage != nil {
                    Image(systemName: sfImage!)
                        .resizable()
                        .frame(width: 20, height: 18)
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
            
            //MARK: - TextFiled Type
            switch textfiledType {
            case .NameType:
                
                TextField(placeHolderName, text: $text)
                    .autocorrectionDisabled(true)
                    .keyboardType(.default)
                
            case .EmailType:
                
                TextField(placeHolderName, text: $text)
                    .autocorrectionDisabled(true)
                    .keyboardType(.emailAddress)
                
            case .TenDigitPhoneNumberType:
                
                TextField(placeHolderName, text: $text)
                    .autocorrectionDisabled(true)
                    .keyboardType(.numberPad)
                
            case .PasswordType:
                
                if isShowPass {
                    TextField(placeHolderName, text: $text)
                        .autocorrectionDisabled(true)
                        .keyboardType(.default)
                } else {
                    SecureField(placeHolderName, text: $text)
                        .autocorrectionDisabled(true)
                        .keyboardType(.default)
                }
                
            case .ConfirmPasswordType:
                
                if isShowPass {
                    TextField(placeHolderName, text: $text)
                        .autocorrectionDisabled(true)
                        .keyboardType(.default)
                } else {
                    SecureField(placeHolderName, text: $text)
                        .autocorrectionDisabled(true)
                        .keyboardType(.default)
                }
                
            }
            
            if textfiledType == .PasswordType || textfiledType == .ConfirmPasswordType {
                
                Button {
                    isShowPass.toggle()
                } label: {
                    Image(systemName: isShowPass ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.gray)
                }
            }
            
            
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
