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
    @State var style: CustomTextFiledStyle
    @State var imageStyle: ImageTextfiled
    @State var textFiledType: TextfiledType
    @State var sfImage: String?
    @State var customImage: String?
    @State var isDisplayCloseBtn : Bool
    @State var isAnimation: Bool
    @State var textSide: TextSide
    @State var textForgroundColor: Color
    
    /// Only Four Requriment Parameters use like placeHolderName, text, style, imageStyle, and other Parameter are Optional Or Defaults values.
    /// - Parameters:
    ///     - placerHolder  : Assign a place holder Text
    ///     - text          : A binding to the text varible
    ///     - style         : You can choose textFiled Style [i.c. Oultlined, Capsules, Underlined]
    ///     - imageStyle    : You can also select the image style [i.c. sfImage, Customimage, none]
    ///     - textFiledType : You can Select the TextFiled Type [i.c. Name, Email, Pass, ect...],
    ///     this attributes use the keyborad type...
    ///     - sfImage       : This is optional parameter. If You select imageStyle.sfImage, then use this parameter.
    ///     - customImage   : This is optional parameter. If You select imageStyle.Customimage, then use this parameter.
    ///     - isDisplayCloseBtn : By Default is True. 
    
    public init(
        placeHolderName: String,
        text: Binding<String>,
        style: CustomTextFiledStyle,
        imageStyle: ImageTextfiled,
        textFiledType: TextfiledType,
        sfImage: String? = nil,
        customImage: String? = nil,
        isDisplayCloseBtn: Bool = true,
        isAnimation: Bool,
        textSide: TextSide = .TopLeft,
        textForgroundColor: Color = .black
    ) {
        self.placeHolderName = placeHolderName
        self._text = text
        self.style = style
        self.imageStyle = imageStyle
        self.textFiledType = textFiledType
        self.sfImage = sfImage
        self.customImage = customImage
        self.isDisplayCloseBtn = isDisplayCloseBtn
        self.isAnimation = isAnimation
        self.textSide = textSide
        self.textForgroundColor = textForgroundColor
    }
    
    public var body: some View {
        
        //MARK: - With Animation
        if isAnimation {
            
            //MARK: - Style Method
            switch style {
            case .OutLineTextFiled:
                
                //MARK: - OutLineTextFiled
                switch textSide {
                case .TopLeft, .TopCenter, .TopRight:
                    
                    if !text.isEmpty {
                        
                        if textSide == .TopLeft {
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                    
                    //OutlinedTextFiledSytle - create Oultline textfiled
                    OutlinedTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
#if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
#endif
                    }
                    
                case .BottomLeft, .BottomCenter, .BottomRight:
                    
                    //OutlinedTextFiledSytle - create Oultline textfiled
                    OutlinedTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
#if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
#endif
                    }
                    
                    if !text.isEmpty {
                        if textSide == .BottomLeft {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                }
                
                
            case .UnderLineTextFiled:
                
                //MARK: - UnderLineTextFiled
                switch textSide {
                case .TopLeft, .TopCenter, .TopRight:
                    
                    if !text.isEmpty {
                        if textSide == .TopLeft {
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                    
                    //UnderlinedTextFieldStyle - create underline Textfiled
                    UnderlinedTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
    #if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                    }
                    
                case .BottomLeft, .BottomCenter, .BottomRight:
                    
                    //UnderlinedTextFieldStyle - create underline Textfiled
                    UnderlinedTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
    #if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                    }
                    
                    if !text.isEmpty {
                        if textSide == .BottomLeft {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                }
                
               
                
            case .CapsuleTextFiled:
                
                
                //MARK: - CapsuleTextFiled
                switch textSide {
                case .TopLeft, .TopCenter, .TopRight:
                    
                    if !text.isEmpty {
                        if textSide == .TopLeft {
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .TopRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                    
                    //CapsuleTextFieldStyle - Create Capsule Texfiled
                    CapsuleTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
    #if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                    }

                    
                case .BottomLeft, .BottomCenter, .BottomRight:
                    
                    //CapsuleTextFieldStyle - Create Capsule Texfiled
                    CapsuleTextFieldStyle(
                        placeHolderName: placeHolderName,
                        text: $text,
                        imageStyle: imageStyle,
                        textfiledType: textFiledType,
                        isCloseBtn: isDisplayCloseBtn,
                        sfImage: sfImage,
                        cImage: customImage
                    )
                    .onAppear {
    #if DEBUG
                        UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                    }

                    
                    if !text.isEmpty {
                        if textSide == .BottomLeft {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .leftH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomCenter {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .centerH()
                                .padding(.horizontal, 2)
                        }
                        if textSide == .BottomRight {
                            
                            Text(placeHolderName)
                                .font(.headline)
                                .foregroundColor(textForgroundColor)
                                .animationEffect()
                                .rightH()
                                .padding(.horizontal, 2)
                        }
                    }
                }
            }
        }
        
        //MARK: - Without Animation
        else {
            //MARK: - Choose anyone Method
            switch style {
            case .OutLineTextFiled:
                
                //OutlinedTextFiledSytle - create Oultline textfiled
                OutlinedTextFieldStyle(
                    placeHolderName: placeHolderName,
                    text: $text,
                    imageStyle: imageStyle,
                    textfiledType: textFiledType,
                    isCloseBtn: isDisplayCloseBtn,
                    sfImage: sfImage,
                    cImage: customImage
                )
                .onAppear {
    #if DEBUG
                    UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                }
                
            case .UnderLineTextFiled:
                
                //UnderlinedTextFieldStyle - create underline Textfiled
                UnderlinedTextFieldStyle(
                    placeHolderName: placeHolderName,
                    text: $text,
                    imageStyle: imageStyle,
                    textfiledType: textFiledType,
                    isCloseBtn: isDisplayCloseBtn,
                    sfImage: sfImage,
                    cImage: customImage
                )
                .onAppear {
    #if DEBUG
                    UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                }
                
            case .CapsuleTextFiled:
                
                //CapsuleTextFieldStyle - Create Capsule Texfiled
                CapsuleTextFieldStyle(
                    placeHolderName: placeHolderName,
                    text: $text,
                    imageStyle: imageStyle,
                    textfiledType: textFiledType,
                    isCloseBtn: isDisplayCloseBtn,
                    sfImage: sfImage,
                    cImage: customImage
                )
                .onAppear {
    #if DEBUG
                    UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
    #endif
                }
            }
        }
    }
}
