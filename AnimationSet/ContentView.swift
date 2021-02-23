//
//  ContentView.swift
//  AnimationSet
//
//  Created by ZZJ on 2021/2/18.
//

import SwiftUI

enum ContentAnimation {
    case HideAnimation
    case ShowAnimation
    case LoadingAnimation
    case SpinAnimation
}

struct Item: Hashable {
    var title: String
    var key: ContentAnimation
}


struct ContentView: View {
    
    let array = [Item(title: "隐式动画", key: .HideAnimation),
                 Item(title: "显式动画", key: .ShowAnimation),
                 Item(title: "加载动画", key: .LoadingAnimation),
                 Item(title: "⦁⦁⦁动画", key: .SpinAnimation)
    ]
    
    var body: some View {
        NavigationView {
            List(array, id: \.self) { item in
                NavigationLink(
                    destination: presentNavigation(item.key),
                    label: {
                        Text(item.title).padding()
                    })
                
      
            }
            .navigationBarTitle("动画锦集")
            
        }
    }
    
    @ViewBuilder
    func presentNavigation(_ key: ContentAnimation) -> some View {
        switch key {
        case .HideAnimation:
            HideAnimation()
        case .ShowAnimation:
            ShowAnimation()
        case .LoadingAnimation:
            LoadingAnimation()
        case .SpinAnimation:
            SpinAnimation()
        default:
            EmptyView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
