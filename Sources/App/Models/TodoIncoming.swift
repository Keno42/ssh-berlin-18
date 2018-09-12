//
//  TodoIncoming.swift
//  App
//
//  Created by Kenichi Ueno on 2018/09/12.
//

import Vapor
extension Todo {
    struct Incoming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            // default values if nil
            return Todo(id: nil,
                        title: title ?? "untitled",
                        completed: completed ?? false,
                        order: order)
        }
    }
}
