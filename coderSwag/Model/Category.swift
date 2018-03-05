import Foundation


struct Category {
  // private(set) -> can't be set from other classes
  private(set) public var title: String
  private(set) public var image: String
  
  init(title: String , image: String) {
    self.title = title
    self.image = image
  }
}





