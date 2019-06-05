//
//  Task.swift
//  ToDoAppWithSwiftUI
//
//  Created by beryu on 2019/06/05.
//  Copyright © 2019 blk. All rights reserved.
//

import Combine
import SwiftUI

final class Task: BindableObject, Identifiable {
    let didChange = PassthroughSubject<Task, Never>()
    var id: String {
        return title
    }

    var title: String {
        didSet {
            didChange.send(self)
        }
    }

    var isDone: Bool {
        didSet {
            didChange.send(self)
        }
    }

    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}
