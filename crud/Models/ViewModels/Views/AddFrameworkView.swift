//
//  AddFrameworkView.swift
//  crud
//
//  Created by Daniel Melenge Rojas on 16/06/25.
//

import SwiftUI

struct AddFrameworkView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: FrameworkViewModel
    @State private var name = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Framework name", text: $name)
            }
            .navigationTitle("Add")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        viewModel.add(name)
                        dismiss()
                    }.disabled(name.isEmpty)
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
