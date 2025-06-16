//
//  FrameworkRow.swift
//  crud
//
//  Created by Daniel Melenge Rojas on 16/06/25.
//

import SwiftUI

struct FrameworkRow: View {
    var framework: Framework

    var body: some View {
        HStack {
            Text(framework.name)
            Spacer()
            Image(systemName: "pencil")
                .foregroundColor(.gray)
        }
    }
}
