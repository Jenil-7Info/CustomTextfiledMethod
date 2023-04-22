//
//  ContentView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import SwiftUI

public struct ContentView: View {
    
    @State private var fName        : String    = ""
    @State private var lName        : String    = ""
    @State private var email        : String    = ""
    @State private var phone        : String    = ""
    @State private var pass         : String    = ""
    @State private var ConfirmPass  : String    = ""
        
    public var body: some View {
        VStack(spacing: 25) {
            
            Text("SignIn View")
                .leftH()
                .headingFont()
                .padding(.vertical)
            
            Spacer()
            
            //MARK: - Name
            HStack(spacing: 20) {
                
                CustomTextFiledMethod(
                    placeHolderName: "First Name",
                    text: $fName,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    textFiledType: .NameType,
                    isDisplayCloseBtn: false
                )
                
                CustomTextFiledMethod(
                    placeHolderName: "Last Name",
                    text: $lName,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    textFiledType: .NameType,
                    isDisplayCloseBtn: false  //default true
                )
            }
            
            //MARK: - Phone Number
            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: $phone,
                style: .UnderLineTextFiled,
                imageStyle: .customImage,
                textFiledType: .TenDigitPhoneNumberType,
                customImage: "phone"
            )
            
            //MARK: - Email
            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: $email,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .EmailType,
                sfImage: "envelope.fill"
            )
            
            //MARK: - Password
            CustomTextFiledMethod(
                placeHolderName: "Password",
                text: $pass,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .PasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            //MARK: - Password
            CustomTextFiledMethod(
                placeHolderName: "Confrim Password",
                text: $ConfirmPass,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .ConfirmPasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            Spacer()
            
            //MARK: - Submit Button
            Button {
         
                
            } label: {
                Text("Submit")
                    .bold()
                    .font(.title3)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
            }
            .padding()
            .background {
                Capsule()
            }
            .padding(.bottom)
            
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
