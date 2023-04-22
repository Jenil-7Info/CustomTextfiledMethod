//
//  CapsuleTextFieldStyle.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 21/04/23.
//

import Foundation
import SwiftUI
    
public struct CapsuleTextFieldStyle: View {
    
    @State var placeHolderName: String
    @Binding var text: String
    @State var imageStyle: ImageTextfiled
    @State var textfiledType: TextfiledType
    @State var isCloseBtn : Bool
    @State var sfImage: String?
    @State var cImage: String?
    
    public var body: some View {
        HStack {
            
            if imageStyle == .sfImage {
                if sfImage != nil {
                    Image(systemName: sfImage!)
                        .resizable()
                        .frame(width: 18, height: 18)
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
                
                TextField(placeHolderName, text: $text)
                    .autocorrectionDisabled(true)
                    .keyboardType(.default)

            case .ConfirmPasswordType:
                
                TextField(placeHolderName, text: $text)
                    .autocorrectionDisabled(true)
                    .keyboardType(.default)
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
        .padding(.vertical)
        .padding(.horizontal, 24)
        .background(
            Color(UIColor.systemGray6)
        )
        .clipShape(Capsule(style: .continuous))
    }
}
