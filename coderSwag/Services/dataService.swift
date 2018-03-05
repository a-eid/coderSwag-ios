import Foundation

class DataService {
  static let instance = DataService() // for it to be a singlton
  let categories = [
    Category(title: "SHIRTS", image: "shirts.png"),
    Category(title: "HOODIES", image: "hoodies.png"),
    Category(title: "HATS", image: "hats.png"),
    Category(title: "DIGITAL", image: "digital.png"),
    Category(title: "SHIRTS", image: "shirts.png"),
    Category(title: "HOODIES", image: "hoodies.png"),
    Category(title: "HATS", image: "hats.png"),
    Category(title: "DIGITAL", image: "digital.png"),
    Category(title: "SHIRTS", image: "shirts.png"),
    Category(title: "HOODIES", image: "hoodies.png"),
    Category(title: "HATS", image: "hats.png"),
    Category(title: "DIGITAL", image: "digital.png"),
  ]
  
  // this could be calling an api and (maybe caching the response) and returning the data.
  func getCategories() -> [Category]{
    return categories
  }
  
}
