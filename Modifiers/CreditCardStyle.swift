/**
 Materia: Dispositivos Móviles II
 Examen Final
 Alumnos:
 Jose Flores Guerra
 Gerardo Gomez Mariscal
 Sebastian Acosta Arellano
 Carlos Jesus Abonce Juarez
 */

import SwiftUI

struct CreditCardStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 75, height: 80)
            .background(Color.white)
            .cornerRadius(10)
            .buttonStyle(PlainButtonStyle())
    }
}
