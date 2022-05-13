/**
 Materia: Dispositivos Móviles II
 Examen Final
 Alumnos:
 Jose Flores Guerra
 Gerardo Gomez Mariscal
 Sebastian Acosta Arellano
 Carlos Jesus Abonce Juarez
 */
import Foundation
import UIKit
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, antialiased: Bool = true, corners: UIRectCorner) -> some View {
        clipShape(
            RoundedCorner(radius: radius, style: antialiased ? .continuous : .circular, corners: corners)
        )
    }
}
