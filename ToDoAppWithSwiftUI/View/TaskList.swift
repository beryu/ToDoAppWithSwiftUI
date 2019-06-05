//
//  ContentView.swift
//  ToDoAppWithSwiftUI
//
//  Created by beryu on 2019/06/04.
//  Copyright © 2019 blk. All rights reserved.
//

import SwiftUI

struct TaskList : View {
    @EnvironmentObject private var userData: UserData

    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tasks) { task in
                    TaskRow().environmentObject(task)
                }
                NavigationButton(destination: NewTask().environmentObject(userData)) {
                    AddRow()
                }
            }
            .navigationBarTitle(Text("ToDo"), displayMode: .large)
        }
    }
}

#if DEBUG
struct TaskList_Previews : PreviewProvider {
    static var previews: some View {
        TaskList()
    }
}
#endif
