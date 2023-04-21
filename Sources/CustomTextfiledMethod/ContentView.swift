//
//  ContentView.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var fName        : String    = ""
    @State private var lName        : String    = ""
    @State private var email        : String    = ""
    @State private var phone        : String    = ""
    @State private var pass         : String    = ""
    @State private var ConfirmPass  : String    = ""
        
    var body: some View {
        VStack(spacing: 25) {
            
            Text("SignIn View")
                .leftH()
                .headingFont()
                .padding(.vertical)
            
            Spacer()
            
            //NOTE: - name
            HStack(spacing: 20) {
                
                CustomTextFiledMethod(
                    placeHolderName: "First Name",
                    text: $fName,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    isDisplayCloseBtn: false
                )
                
                CustomTextFiledMethod(
                    placeHolderName: "Last Name",
                    text: $lName,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    isDisplayCloseBtn: false  //default true
                )
            }
            
            //NOTE: - Phone Number
            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: $phone,
                style: .UnderLineTextFiled,
                imageStyle: .customImage,
                customImage: "phone"
            )
            
            //NOTE: - Email
            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: $email,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                sfImage: "envelope.fill"
            )
            
            //NOTE: - Password
            CustomTextFiledMethod(
                placeHolderName: "Password",
                text: $pass,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            //NOTE: - Password
            CustomTextFiledMethod(
                placeHolderName: "Confrim Password",
                text: $ConfirmPass,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            Spacer()
            
            //NOTE: - Submit Button
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