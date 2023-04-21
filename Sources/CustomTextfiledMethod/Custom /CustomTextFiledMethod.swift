//
//  CustomTextFiledMethod.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import Foundation
import SwiftUI

public struct CustomTextFiledMethod: View {
    
    @State var placeHolderName: String
    @Binding var text: String
    @State var keyBoardType: UIKeyboardType
    @State var style: CustomTextFiledStyle
    @State var imageStyle: ImageTextfiled
    @State var sfImage: String?
    @State var customImage: String?
    @State var isDisplayCloseBtn : Bool
    
    /// Only Four Requriment Parameters use like placeHolderName, text, style, imageStyle, and other Parameter are Optional Or Defaults values.
    /// - Parameters:
    ///     - placerHolder  : Assign a place holder Text
    ///     - text          : A binding to the text varible
    ///     - keyBoardType  : By default ".default" set.
    ///     - style         : You can choose textFiled Style [i.c. Oultlined, Capsules, Underlined]
    ///     - imageStyle    : You can also select the image style [i.c. sfImage, Customimage, none]
    ///     - sfImage       : This is optional parameter. If You select imageStyle.sfImage, then use this parameter.
    ///     - customImage   : This is optional parameter. If You select imageStyle.Customimage, then use this parameter.
    ///     - isDisplayCloseBtn : By Default is True. 
    
    public init(
        placeHolderName: String,
        text: Binding<String>,
        keyBoardType: UIKeyboardType = .default,
        style: CustomTextFiledStyle,
        imageStyle: ImageTextfiled,
        sfImage: String? = nil,
        customImage: String? = nil,
        isDisplayCloseBtn: Bool = true
    ) {
        self.placeHolderName = placeHolderName
        self._text = text
        self.keyBoardType = keyBoardType
        self.style = style
        self.imageStyle = imageStyle
        self.sfImage = sfImage
        self.customImage = customImage
        self.isDisplayCloseBtn = isDisplayCloseBtn
    }
    
    public var body: some View {
        
        //MARK: - Choose anyone Method
        switch style {
        case .OutLineTextFiled:
            
            //OutlinedTextFiledSytle - create Oultline textfiled
            OutlinedTextFieldStyle(
                placeHolderName: placeHolderName,
                text: $text,
                keyBoardType: keyBoardType,
                imageStyle: imageStyle,
                isCloseBtn: isDisplayCloseBtn,
                sfImage: sfImage,
                cImage: customImage
            )
            
        case .UnderLineTextFiled:
            
            //UnderlinedTextFieldStyle - create underline Textfiled
            UnderlinedTextFieldStyle(
                placeHolderName: placeHolderName,
                text: $text,
                keyBoardType: keyBoardType,
                imageStyle: imageStyle,
                isCloseBtn: isDisplayCloseBtn,
                sfImage: sfImage,
                cImage: customImage
            )
            
        case .CapsuleTextFiled:
            
            //CapsuleTextFieldStyle - Create Capsule Texfiled
            CapsuleTextFieldStyle(
                placeHolderName: placeHolderName,
                text: $text,
                keyBoardType: keyBoardType,
                imageStyle: imageStyle,
                isCloseBtn: isDisplayCloseBtn,
                sfImage: sfImage,
                cImage: customImage
            )
                                                           
        }
    }
}