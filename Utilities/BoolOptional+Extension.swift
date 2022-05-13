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

extension Optional where Wrapped == Bool {
    var _value: Bool? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var boolValue: Bool {
        get {
            return _value ?? false
        }
        set {
            _value = newValue
        }
    }
}


