//
//  ContentView.swift
//  AnimationSet
//
//  Created by ZZJ on 2021/2/18.
//

import SwiftUI

struct ContentView: View {
    
    let array = [["title":"隐式动画","key":"HideAnimation"],
                 ["title":"显式动画","key":"ShowAnimation"],
                 ["title":"加载动画","key":"LoadingAnimation"],
                 ["title":"⦁⦁⦁动画","key":"SpinAnimation"],
    ]
    
    var body: some View {
        NavigationView {
            List(array, id: \.self) { item in
                NavigationLink(
                    destination: SpinAnimation(),
                    label: {
                        Text(item["title"]!).padding()
                    })
                
      
            }
            .navigationBarTitle("动画锦集")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
