//
//  NewTask.swift
//  ToDoAppWithSwiftUI
//
//  Created by beryu on 2019/06/05.
//  Copyright © 2019 blk. All rights reserved.
//

import Combine
import SwiftUI

fileprivate class Form {
    var title: String = ""
}

struct NewTask : View {
    @EnvironmentObject private var userData: UserData
    private var form = Form()

    var body: some View {
        VStack {
            TextField(Binding<String>(getValue: { () -> String in
                return self.form.title
            }, setValue: { newValue in
                self.form.title = newValue
            }), placeholder: Text("Watch WWDC videos"), onEditingChanged: { _ in }, onCommit: {})
            Button(action: {
                self.userData.tasks.append(Task(title: self.form.title, isDone: false))
                // TODO: Back to list page
            }) {
                Text("Add task")
            }
        }
    }
}

#if DEBUG
struct NewTask_Previews : PreviewProvider {
    static var previews: some View {
        NewTask()
    }
}
#endif
