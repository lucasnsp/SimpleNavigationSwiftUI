//
//  Navigation.swift
//  SimpleNavigationSwiftUI
//
//  Created by Lucas Neves dos santos pompeu on 03/11/23.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView {
            NavigationLink("Ir para a tela 02") {
                Tela02()
            }
            .navigationTitle("Tela01")
        }
    }
}


struct Tela02: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Tela 02")
            Button("Voltar") {
                dismiss()
            }
        }
        .navigationTitle("Tela02")
    }
}

struct Tela03: View {
    var body: some View {
        VStack {
            Image(systemName: "Circle.fill")
        }
    }
}

#Preview {
    Navigation()
}
