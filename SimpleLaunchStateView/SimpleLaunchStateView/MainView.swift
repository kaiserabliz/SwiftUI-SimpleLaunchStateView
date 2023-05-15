//
//  ContentView.swift
//  SimpleLaunchStateView
//
//  Created by Kaiser Abliz on 5/14/23.
//

import SwiftUI

final class LaunchStateManager: ObservableObject {
    @Published var ready: Bool = false
}

struct MainView: View {
    @StateObject var viewModel: MainViewViewModel
    @StateObject var launchScreenState = LaunchStateManager()
    init(viewModel: MainViewViewModel = MainViewViewModel(launchScreenState: LaunchStateManager())) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    var body: some View {
        ZStack {
            if viewModel.launchScreenState.ready {
                if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                    accountView
                } else {
                    LoginView()
                }
            } else {
                LaunchStateView()
            }
        }
        .onAppear {
            viewModel.fetchCurrentUser()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
