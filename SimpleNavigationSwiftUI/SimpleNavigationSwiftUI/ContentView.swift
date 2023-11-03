//
//  ContentView.swift
//  SimpleNavigationSwiftUI
//
//  Created by Lucas Neves dos santos pompeu on 03/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    @State private var isPresentedFullScreen = false
    
    var body: some View {
        VStack {
            VStack (spacing: 20.0) {
                Button("Apresentar Sheet") {
                    isPresented.toggle()
                }
                .sheet(isPresented: $isPresented) {
                    SheetView()
                }
                Button("Apresentar FullScreen") {
                    isPresentedFullScreen.toggle()
                }
                .fullScreenCover(isPresented: $isPresentedFullScreen) {
                    SheetView()
                }
            }
            
        }
        .padding()
    }
}

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            VStack {
                Text("Deu bom")
                Button("Voltar") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
