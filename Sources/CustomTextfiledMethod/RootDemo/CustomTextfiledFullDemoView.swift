//
//  FullDemoView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 21/04/23.
//

import SwiftUI

//public struct CustomTextfiledFullDemoView: View {
//    
//    @State private var fName    : String = ""
//    @State private var mName    : String = ""
//    @State private var lName    : String = ""
//    
//    public var body: some View {
//        VStack {
//            
//            Text("Custom Textfiled")
//                .headingFont()
//                .leftH()
//                .padding(.vertical)
//            
//            ScrollView {
//                
//                //MARK: - Without symbol
//                VStack(spacing: 20) {
//                    
//                    Text("Without symbol :-")
//                        .font(.headline)
//                        .leftH()
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "First Name",
//                        text: $fName,
//                        style: .CapsuleTextFiled,
//                        imageStyle: .none,
//                        textFiledType: .NameType)
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Middle Name",
//                        text: $mName,
//                        style: .OutLineTextFiled,
//                        imageStyle: .none,
//                        textFiledType: .NameType)
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Last Name",
//                        text: $lName,
//                        style: .UnderLineTextFiled,
//                        imageStyle: .none,
//                        textFiledType: .NameType)
//                        .padding(.bottom, 30)
//                }
//                
//                //MARK: - With SF Symbol
//                VStack(spacing: 20) {
//                    Text("With SF Symbol :-")
//                        .font(.headline)
//                        .leftH()
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "First Name",
//                        text: $fName,
//                        style: .CapsuleTextFiled,
//                        imageStyle: .sfImage,
//                        textFiledType: .NameType,
//                        sfImage: "person.fill")
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Middle Name",
//                        text: $mName,
//                        style: .OutLineTextFiled,
//                        imageStyle: .sfImage,
//                        textFiledType: .NameType,
//                        sfImage: "person.fill")
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Last Name",
//                        text: $lName,
//                        style: .UnderLineTextFiled,
//                        imageStyle: .sfImage,
//                        textFiledType: .NameType,
//                        sfImage: "person.fill")
//                        .padding(.bottom, 30)
//                }
//                
//                //MARK: - With Custom Symbol
//                VStack(spacing: 20) {
//                    Text("With Custom Symbol :-")
//                        .font(.headline)
//                        .leftH()
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "First Name",
//                        text: $fName,
//                        style: .CapsuleTextFiled,
//                        imageStyle: .customImage,
//                        textFiledType: .NameType,
//                        customImage: "qr")
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Middle Name",
//                        text: $mName,
//                        style: .OutLineTextFiled,
//                        imageStyle: .customImage,
//                        textFiledType: .NameType,
//                        customImage: "qr")
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Last Name",
//                        text: $lName,
//                        style: .UnderLineTextFiled,
//                        imageStyle: .customImage,
//                        textFiledType: .NameType,
//                        customImage: "qr")
//                        .padding(.bottom, 30)
//                }
//                
//                //MARK: - Disable Close Button
//                VStack(spacing: 20) {
//                    
//                    Text("Disable Close Button :-")
//                        .leftH()
//                        .font(.headline)
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "First Name",
//                        text: $fName,
//                        style: .CapsuleTextFiled,
//                        imageStyle: .none,
//                        textFiledType: .NameType,
//                        isDisplayCloseBtn: false
//                    )
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Middle Name",
//                        text: $mName,
//                        style: .OutLineTextFiled,
//                        imageStyle: .sfImage,
//                        textFiledType: .NameType,
//                        sfImage: "person.fill",
//                        isDisplayCloseBtn: false
//                    )
//                    
//                    CustomTextFiledMethod(
//                        placeHolderName: "Last Name",
//                        text: $lName,
//                        style: .UnderLineTextFiled,
//                        imageStyle: .customImage,
//                        textFiledType: .NameType,
//                        customImage: "qr",
//                        isDisplayCloseBtn: false
//                    )
//                        .padding(.bottom, 30)
//                }
//                
//            }
//            .padding(.vertical)
//            .scrollIndicators(.never)
//        }
//        .padding(.horizontal, 20)
//    }
//}
//
//struct FullDemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTextfiledFullDemoView()
//    }
//}
