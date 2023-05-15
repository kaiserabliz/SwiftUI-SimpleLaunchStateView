//
//  LaunchStateView.swift
//  SimpleLaunchStateView
//
//  Created by Kaiser Abliz on 5/14/23.
//

import SwiftUI

struct LaunchStateView: View {
    @EnvironmentObject private var launchScreenState: LaunchStateManager
    var body: some View {
        ZStack {
            backgroundColor
            Text("Getting Ready...")
        }
    }
    
    @ViewBuilder
    private var backgroundColor: some View {
        Color.purple.ignoresSafeArea()
    }
}

struct LaunchStateView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchStateView()
    }
}
