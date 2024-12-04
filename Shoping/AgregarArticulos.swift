//
//  AgregarArticulos.swift
//  Shoping
//
//  Created by DAMII on 3/12/24.
//

import SwiftUI

struct AgregarArticulos: View {
    @Environment(\.managedObjectContext) private var moc
    @Environment(\.dismiss) private var dismiss
    
    @State private var articulos: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Artículos", text: $articulos)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: {
                    let agregar = Compras(context: self.moc)
                    agregar.articulos = self.articulos
                    agregar.comprado = false
                    agregar.fecha = Date()
                    agregar.id = UUID()
                    
                    try! self.moc.save()
                    dismiss()
                }) {
                    Text("Agregar")
                }
                .disabled(self.articulos.count > 0 ? false: true)
            }
            .navigationTitle("Agregar artículos")
        }
    }
}
