//
//  File.swift
//  
//
//  Created by SevenInfosystem on 24/04/23.
//

import Foundation
import SwiftUI

struct MaterialTextfiledStyle: View {
    
    @State var placeHolderName: String
    @Binding var text: String
    @State var imageStyle: ImageTextfiled
    @State var textfiledType: TextfiledType
    @State var isCloseBtn : Bool
    @State var sfImage: String?
    @State var cImage: String?
    @State  var isShowPass: Bool = false
    @State var isTapped: Bool = false
    
    public var body: some View {
        VStack(spacing: 4) {
            
            HStack {
                
                switch textfiledType {
                case .NameType:
                 
                    MatiralTextFiledView(placeHolderName: placeHolderName, text: $text, textfiledType: textfiledType, isCloseBtn: isCloseBtn)
                    
                case .EmailType:
                    
                    MatiralTextFiledView(placeHolderName: placeHolderName, text: $text, textfiledType: textfiledType, isCloseBtn: isCloseBtn)
                    
                case .TenDigitPhoneNumberType:
                    
                    MatiralTextFiledView(placeHolderName: placeHolderName, text: $text, textfiledType: textfiledType, isCloseBtn: isCloseBtn)
                    
                case .PasswordType:
                    
                    TextField(placeHolderName, text: $text) { status in
                        if status {
                            withAnimation(.spring()) {
                                isTapped = true
                            }
                        }
                    } onCommit: {
                        if text.isEmpty {
                            withAnimation(.spring()) {
                                isTapped = false
                            }
                        }
                    }
                    
                    if textfiledType == .PasswordType {
                        Button {
                            isShowPass.toggle()
                        } label: {
                            Image(systemName: isShowPass ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .padding(.top, isTapped ? 15 : 0)
            .background(alignment: .leading) {
                Text(placeHolderName)
                    .scaleEffect(isTapped ? 0.8 : 1)
                    .offset(x: isTapped ? -6 : 0, y: isTapped ? -15 : 0)
                    .foregroundColor(isTapped ? .accentColor : .gray)
            }
            .padding(.horizontal)
            
            Rectangle()
                .fill(isTapped ? Color.accentColor : .gray)
                .opacity(isTapped ? 1 : 0.5)
                .frame(height: 1)
                .padding(.top, 10)
        }
        .padding(.top, 12)
        .background(Color.gray.opacity(0.09))
        .cornerRadius(5)
    }
}

struct MatiralTextFiledView: View {
    
    @State var placeHolderName: String
    @Binding var text: String
    @State var textfiledType: TextfiledType
    @State var isCloseBtn : Bool
    @State var isTapped: Bool = false
    
    var body: some View {
        TextField(placeHolderName, text: $text) { status in
            if status {
                withAnimation(.spring()) {
                    isTapped = true
                }
            }
        } onCommit: {
            if text.isEmpty {
                withAnimation(.spring()) {
                    isTapped = false
                }
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
}
