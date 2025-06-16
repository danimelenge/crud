//
//  EditFrameworkView.swift
//  crud
//
//  Created by Daniel Melenge Rojas on 16/06/25.
//

import SwiftUI

struct EditFrameworkView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: FrameworkViewModel
    var framework: Framework
    @State private var name: String = ""

    var body: some View {
        Form {
            TextField("Edit name", text: $name)
        }
        .onAppear {
            name = framework.name
        }
        .navigationTitle("Edit")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    viewModel.update(framework, with: name)
                    dismiss()
                }
            }
        }
    }
}
