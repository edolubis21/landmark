import Foundation
import Combine

final class ModelData: ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T:Decodable>(_ filename:String ) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("couldn find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("couldnt load \(filename) from main bundle : \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("couldnt parse json")
    }
}
