//
//  LoadingAnimation.swift
//  AnimationSet
//
//  Created by ZZJ on 2021/2/18.
//

import SwiftUI
struct LoadingAnimation: View {
    @State private var isLoading = false
    @State private var isPregress = false
    var body: some View {
        VStack {
            loading
            pregress
        }
    }
    
    var loading: some View {
        
        ZStack {
                   
                Circle()
                   .stroke(Color(.systemGray5), lineWidth: 14)
                   .frame(width: 100, height: 100)
            
               Circle()
                   .trim(from: 0, to: 0.2)
                   .stroke(Color.green, lineWidth: 7)
                   .frame(width: 100, height: 100)
                   .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                   .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                   .onAppear() {
                       self.isLoading = true
               }
        }

        
    }
    
    var pregress: some View {
        ZStack {
         
            Text("Loading")
                .font(.system(.body, design: .rounded))
                .bold()
                .offset(x: 0, y: -25)
 
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemGray5), lineWidth: 3)
                .frame(width: 250, height: 3)
 
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.green, lineWidth: 3)
                .frame(width: 30, height: 3)
                .offset(x: isPregress ? 110 : -110, y: 0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
        }
        .onAppear() {
            self.isPregress = true
        }

        
    }
    
}

struct LoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LoadingAnimation()
    }
}
