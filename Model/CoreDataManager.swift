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
import CoreData

class CoreDataManager: ObservableObject {
    static var shared = CoreDataManager()
    
    private init() {
        persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
    }
    public var context: NSManagedObjectContext {  // (1)
        get {
            return self.persistentContainer.viewContext
        }
    }
    
    var persistentContainer: NSPersistentContainer = { // (2)
        let container = NSPersistentContainer(name: "FinancialApp")
        container.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                print(error?.localizedDescription as Any)
                return
            }
        }
        return container
    }()
    
    func save() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
