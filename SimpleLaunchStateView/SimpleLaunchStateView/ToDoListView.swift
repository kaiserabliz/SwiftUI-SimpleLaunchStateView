//
//  ToDoListView.swift
//  SimpleLaunchStateView
//
//  Created by Kaiser Abliz on 5/14/23.
//

import SwiftUI

struct ToDoListView: View {
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        ZStack {
            Text("To Do List")
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
