class Refer {
  var data: Int
  
  init(data: Int) {
    self.data = data
  }
}

var ref = Refer(data: 0)
isKnownUniquelyReferenced(&ref)
