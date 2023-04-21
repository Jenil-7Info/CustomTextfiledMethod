# CustomTextfiledMethod

## Installation

To install this package, import `url here` in SPM.

## Usage Example

``` 
import SwiftUI
import CustomTextfiledMethod

struct ContentView: View {
        
    var body: some View {
        VStack(spacing: 25) {
            
            Text("SignIn View")
                .leftH()                //write horizonal left
                .headingFont()          //title Style
                .padding(.vertical)
            
            Spacer()
            
            //NOTE: - name
            HStack(spacing: 20) {
                
                CustomTextFiledMethod(
                    placeHolderName: "First Name",
                    text: <#Binding<String>#>,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    isDisplayCloseBtn: false //default true
                )
                
                CustomTextFiledMethod(
                    placeHolderName: "Last Name",
                    text: <#Binding<String>#>,
                    style: .UnderLineTextFiled,
                    imageStyle: .none,
                    isDisplayCloseBtn: false  //default true
                )
            }
            
            //NOTE: - Phone Number
            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: <#Binding<String>#>,
                style: .UnderLineTextFiled,
                imageStyle: .customImage,
                customImage: "phone"
            )
            
            //NOTE: - Email
            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: <#Binding<String>#>,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                sfImage: "envelope.fill"
            )
            
            //NOTE: - Password
            CustomTextFiledMethod(
                placeHolderName: "Password",
                text: <#Binding<String>#>,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            //NOTE: - Password
            CustomTextFiledMethod(
                placeHolderName: "Confrim Password",
                text: <#Binding<String>#>,
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

```
