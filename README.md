# CustomTextfiledMethod

## Installation

To install this package, import `https://github.com/Jenil-7Info/CustomTextfiledMethod` in SPM.

## Usage Example

### All TextFiled Style 

``` 
import CustomTextfiledMethod

```


```
            //MARK: - MatrialTextfiled

            CustomTextFiledMethod(
                placeHolderName: "First Name",
                text: $fName,
                style: .MatrialTextfiled,
                imageStyle: .none,
                textFiledType: .NameType,
                isAnimation: false
            )

```


```
            //MARK: - OutLineTextFiled

            CustomTextFiledMethod(
                placeHolderName: "Last Name",
                text: $lName,
                style: .OutLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .NameType,
                sfImage: "person.fill",
                isAnimation: true
            )

```

```
            //MARK: - UnderLineTextFiled

            CustomTextFiledMethod(
                placeHolderName: "Phone Number",
                text: $phone,
                style: .UnderLineTextFiled,
                imageStyle: .sfImage,
                textFiledType: .TenDigitPhoneNumberType,
                sfImage: "phone.fill",
                isAnimation: true
            )

```
            
```
            //MARK: - CapsuleTextFiled

            CustomTextFiledMethod(
                placeHolderName: "Email Address",
                text: $email,
                style: .CapsuleTextFiled,
                imageStyle: .sfImage,
                textFiledType: .EmailType,
                sfImage: "envelope.fill",
                isAnimation: true
            )

```
