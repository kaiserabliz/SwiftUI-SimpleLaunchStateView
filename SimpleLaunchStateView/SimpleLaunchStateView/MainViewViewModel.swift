//
//  MainViewViewModel.swift
//  SimpleLaunchStateView
//
//  Created by Kaiser Abliz on 5/14/23.
//

import Foundation
//import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    @Published var launchScreenState: LaunchStateManager
    
    init(launchScreenState: LaunchStateManager) {
        self.launchScreenState = launchScreenState
    }
    
    func fetchCurrentUser() {
        //Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.currentUserId = "userId" //user?.uid ?? ""
                self.launchScreenState.ready = true
            }
        //}
    }
    
    public var isSignedIn: Bool {
        true
        //return Auth.auth().currentUser != nil
    }
}
