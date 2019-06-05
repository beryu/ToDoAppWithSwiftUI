//
//  TaskRow.swift
//  ToDoAppWithSwiftUI
//
//  Created by beryu on 2019/06/05.
//  Copyright © 2019 blk. All rights reserved.
//

import SwiftUI

struct TaskRow : View {
    @EnvironmentObject private var task: Task

    var body: some View {
        Toggle(isOn: $task.isDone) {
            Text(task.title)
        }
    }
}

#if DEBUG
struct TaskRow_Previews : PreviewProvider {
    static var previews: some View {
        TaskRow()
    }
}
#endif
