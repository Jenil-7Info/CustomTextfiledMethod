//
//  ContentView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import SwiftUI

public struct SignInCustomWithAnimationTextfiledView: View {
    
    @State private var fName        : String    = ""
    @State private var lName        : String    = ""
    @State private var email        : String    = ""
    @State private var phone        : String    = ""
    @State private var pass         : String    = ""
    @State private var ConfirmPass  : String    = ""
        
    public var body: some View {
        VStack(spacing: 20) {
            
            Text("SignIn View")
                .leftH()
                .headingFont()
                .padding(.vertical)
            
            //MARK: - First Name
            CustomTextFiledMethod(
                placeHolderName: "First Name",
                text: $fName,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .NameType,
                sfImage: "person.fill",
                isDisplayCloseBtn: true,
                isAnimation: true,
                textForgroundColor: .blue
            )
            
            //MARK: - Last Name
            CustomTextFiledMethod(
                placeHolderName: "Last Name",
                text: $lName,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .NameType,
                sfImage: "person.fill",
                isDisplayCloseBtn: true, //default true
                isAnimation: true,
                textForgroundColor: .blue
            )
            
            //MARK: - Phone Number
            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: $phone,
                style: .OutLineTextFiled,
                imageStyle: .customImage,
                textFiledType: .TenDigitPhoneNumberType,
                customImage: "phone",
                isAnimation: true,
                textForgroundColor: .blue
            )
            
            //MARK: - Email
            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: $email,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .EmailType,
                sfImage: "envelope.fill",
                isAnimation: true,
                textForgroundColor: .blue
            )
            
            //MARK: - Password
            CustomTextFiledMethod(
                placeHolderName: "Password",
                text: $pass,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .PasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false,
                isAnimation: true,
                textForgroundColor: .blue
            )
            
            //MARK: - Password
            CustomTextFiledMethod(
                placeHolderName: "Confirm Password",
                text: $ConfirmPass,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .ConfirmPasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false,
                isAnimation: true,
                textForgroundColor: .blue
            )
            
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
            .padding(.top)
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInCustomWithAnimationTextfiledView()
    }
}