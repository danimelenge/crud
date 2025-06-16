//
//  FrameworkViewModel.swift
//  crud
//
//  Created by Daniel Melenge Rojas on 16/06/25.
//

import SwiftUI

class FrameworkViewModel: ObservableObject {
    @Published var frameworks: [Framework] = [
        Framework(name: "SwiftUI"),
        Framework(name: "Combine"),
        Framework(name: "CoreData")
    ]

    func add(_ name: String) {
        frameworks.append(Framework(name: name))
    }

    func delete(at offsets: IndexSet) {
        frameworks.remove(atOffsets: offsets)
    }

    func update(_ framework: Framework, with newName: String) {
        if let index = frameworks.firstIndex(of: framework) {
            frameworks[index].name = newName
        }
    }
}
