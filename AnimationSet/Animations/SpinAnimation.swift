//
//  SpinAnimation.swift
//  AnimationSet
//
//  Created by ZZJ on 2021/2/18.
//

import SwiftUI

struct SpinAnimation: View {
    let items: Int = 3
    var body: some View {
        HStack {
            ForEach(0..<items){i in
                Text("•")
                    .transition(AnyTransition
                                    .opacity
                                    .animation(Animation.default.repeatForever()
                                        .delay(Double(i) * 0.2)))
                    
                    .font(.largeTitle)
            }
        }
    }
}

struct SpinAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpinAnimation()
    }
}
