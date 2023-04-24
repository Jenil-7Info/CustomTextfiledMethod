//
//  GEnum.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 21/04/23.
//

import Foundation
import SwiftUI


//MARK: - Custom TextFiled Style
public enum CustomTextFiledStyle: String {
    case OutLineTextFiled
    case UnderLineTextFiled
    case CapsuleTextFiled
}

//MARK: - Image Textfiled
public enum ImageTextfiled: String {
    case sfImage
    case customImage
    case none
}

//MARK: - TextFieled Type
public enum TextfiledType: String {
    case NameType
    case EmailType
    case TenDigitPhoneNumberType
    case PasswordType
    case ConfirmPasswordType
}

//MARK: - Text Side
public enum TextSide  {
    case TopLeft
    case TopCenter
    case TopRight
    case BottomLeft
    case BottomCenter
    case BottomRight
}
