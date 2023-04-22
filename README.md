# CustomTextfiledMethod

## Installation

To install this package, import `https://github.com/Jenil-7Info/CustomTextfiledMethod` in SPM.

## Usage Example

``` 
import SwiftUI
import CustomTextfiledMethod

struct ContentView: View {
    
    var body: some View {
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
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .ConfirmPasswordType,
                sfImage: "square.and.pencil.circle.fill",
                isDisplayCloseBtn: false
            )
            
            Spacer()
            
            //MARK: - Submit Button
            Button {
            
                //MARK: - Use the RegeEx Function 
                    if isValidName(text: fName) {
                        //Sucessful
                    }
                    if isValidName(text: lName) {
                        //Sucessful
                    }
                    if isValidPhoneNumber(phone: phone) {
                        //Sucessful
                    }
                    if isValidEmail(email: email) {
                        //Sucessful
                    } 
                    if isBothSamePassword(pass, ConfirmPassword: ConfirmPass) {
                        //Sucessful
                    }
                    else {
                        //Handle Error OR Alert message...
                    }
            
            
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
