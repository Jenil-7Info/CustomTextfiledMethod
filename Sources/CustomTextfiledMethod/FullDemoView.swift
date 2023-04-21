//
//  FullDemoView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 21/04/23.
//

import SwiftUI

struct FullDemoView: View {
    
    @State private var fName    : String = ""
    @State private var mName    : String = ""
    @State private var lName    : String = ""
    
    var body: some View {
        VStack {
            
            Text("Custom Textfiled")
                .headingFont()
                .leftH()
                .padding(.vertical)
            
            ScrollView {
                
                //MARK: - Without symbol
                VStack(spacing: 20) {
                    
                    Text("Without symbol :-")
                        .font(.headline)
                        .leftH()
                    
                    CustomTextFiledMethod(
                        placeHolderName: "First Name",
                        text: $fName,
                        keyBoardType: .default,
                        style: .CapsuleTextFiled,
                        imageStyle: .none)
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Middle Name",
                        text: $mName,
                        keyBoardType: .default,
                        style: .OutLineTextFiled,
                        imageStyle: .none)
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Last Name",
                        text: $lName,
                        keyBoardType: .default,
                        style: .UnderLineTextFiled,
                        imageStyle: .none)
                        .padding(.bottom, 30)
                }
                
                //MARK: - With SF Symbol
                VStack(spacing: 20) {
                    Text("With SF Symbol :-")
                        .font(.headline)
                        .leftH()
                    
                    CustomTextFiledMethod(
                        placeHolderName: "First Name",
                        text: $fName,
                        keyBoardType: .default,
                        style: .CapsuleTextFiled,
                        imageStyle: .sfImage,
                        sfImage: "person.fill")
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Middle Name",
                        text: $mName,
                        keyBoardType: .default,
                        style: .OutLineTextFiled,
                        imageStyle: .sfImage,
                        sfImage: "person.fill")
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Last Name",
                        text: $lName,
                        keyBoardType: .default,
                        style: .UnderLineTextFiled,
                        imageStyle: .sfImage,
                        sfImage: "person.fill")
                        .padding(.bottom, 30)
                }
                
                //MARK: - With Custom Symbol
                VStack(spacing: 20) {
                    Text("With Custom Symbol :-")
                        .font(.headline)
                        .leftH()
                    
                    CustomTextFiledMethod(
                        placeHolderName: "First Name",
                        text: $fName,
                        keyBoardType: .default,
                        style: .CapsuleTextFiled,
                        imageStyle: .customImage,
                        customImage: "qr")
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Middle Name",
                        text: $mName,
                        keyBoardType: .default,
                        style: .OutLineTextFiled,
                        imageStyle: .customImage,
                        customImage: "qr")
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Last Name",
                        text: $lName,
                        keyBoardType: .default,
                        style: .UnderLineTextFiled,
                        imageStyle: .customImage,
                        customImage: "qr")
                        .padding(.bottom, 30)
                }
                
                //MARK: - Disable Close Button
                VStack(spacing: 20) {
                    
                    Text("Disable Close Button :-")
                        .leftH()
                        .font(.headline)
                    
                    CustomTextFiledMethod(
                        placeHolderName: "First Name",
                        text: $fName,
                        keyBoardType: .default,
                        style: .CapsuleTextFiled,
                        imageStyle: .none,
                        isDisplayCloseBtn: false
                    )
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Middle Name",
                        text: $mName,
                        keyBoardType: .default,
                        style: .OutLineTextFiled,
                        imageStyle: .sfImage,
                        sfImage: "person.fill",
                        isDisplayCloseBtn: false
                    )
                    
                    CustomTextFiledMethod(
                        placeHolderName: "Last Name",
                        text: $lName,
                        keyBoardType: .default,
                        style: .UnderLineTextFiled,
                        imageStyle: .customImage,
                        customImage: "qr",
                        isDisplayCloseBtn: false
                    )
                        .padding(.bottom, 30)
                }
                
            }
            .padding(.vertical)
            .scrollIndicators(.never)
        }
        .padding(.horizontal, 20)
    }
}

struct FullDemoView_Previews: PreviewProvider {
    static var previews: some View {
        FullDemoView()
    }
}
