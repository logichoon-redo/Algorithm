import Foundation

func address(of object: UnsafeRawPointer) -> String {
  let address = Int(bitPattern: object)
  return String(format: "%p", address)
}

// --------------------------------------------------



var array1 = [0, 1, 2, 3, 4, 5]
address(of: array1)

var array2 = array1
address(of: array2)



array1[2] = 2
address(of: array1)
address(of: array2)

