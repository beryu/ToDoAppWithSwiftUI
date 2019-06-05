//
//  UserData.swift
//  ToDoAppWithSwiftUI
//
//  Created by beryu on 2019/06/05.
//  Copyright © 2019 blk. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    var tasks: [Task] = [Task(title: "Learn SwiftUI", isDone: false)] {
        didSet {
            didChange.send(self)
        }
    }
}
