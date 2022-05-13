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


extension Optional where Wrapped == Int {
    var _value: Int? {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
    public var intValue: Int {
        get {
            return _value ?? 0
        }
        set {
            _value = newValue
        }
    }
}
