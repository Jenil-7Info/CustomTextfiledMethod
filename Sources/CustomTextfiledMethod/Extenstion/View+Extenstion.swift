//
//  GFunction.swift
//  CustomTextFiled
//
//  Created by SevenInfosystem on 20/04/23.
//

import Foundation
import SwiftUI

extension View {
    
    //MARK: - Heading Fonts
    public func headingFont() -> some View {
        self
            .font(.largeTitle)
            .fontWeight(.bold)
    }
    
    //MARK: - Horizontall self view
    public func centerH() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    public func leftH() -> some View {
        HStack {
            self
            Spacer()
            Spacer()
        }
    }
    
    public func rightH() -> some View {
        HStack {
            Spacer()
            Spacer()
            self
        }
    }
    
    //MARK: - Vertical self view
    public func centerV() -> some View {
        HStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    public func leftV() -> some View {
        HStack {
            self
            Spacer()
            Spacer()
        }
    }
    
    public func rightV() -> some View {
        HStack {
            Spacer()
            Spacer()
            self
        }
    }
    
    //MARK: - Animation Effects
    public func animationEffect() -> some View {
        withAnimation(.spring(response: 1.5)) {
            self
        }
    }
}
