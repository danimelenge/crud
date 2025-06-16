//
//  ContentView.swift
//  crud
//
//  Created by Daniel Melenge Rojas on 16/06/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkViewModel()
    @State private var showAdd = false

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.frameworks) { framework in
                    NavigationLink(destination: EditFrameworkView(viewModel: viewModel, framework: framework)) {
                        FrameworkRow(framework: framework)
                    }
                }
                .onDelete(perform: viewModel.delete)
            }
            .navigationTitle("Frameworks")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAdd.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
            .sheet(isPresented: $showAdd) {
                AddFrameworkView(viewModel: viewModel)
            }
        }
    }
}


#Preview {
    ContentView()
}
