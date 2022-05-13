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

extension Optional where Wrapped == String {
    var _value: String? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var value: String {
        get {
            return _value ?? ""
        }
        set {
            _value = newValue.isEmpty ? nil : newValue
        }
    }
}
