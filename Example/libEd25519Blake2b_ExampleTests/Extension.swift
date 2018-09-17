//
//  Extension.swift
//  libEd25519Blake2b_ExampleTests
//
//  Created by Stone on 2018/9/17.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation
import libEd25519Blake2b

extension Array where Element == UInt8 {

    public var utf8String: String? {
        return String(data: Data(bytes: self), encoding: .utf8)
    }

    public var hexString: String {
        return `lazy`.reduce("") {
            var s = String($1, radix: 16)
            if s.count == 1 {
                s = "0" + s
            }
            return $0 + s
        }
    }
}

extension ArraySlice where Element == UInt8 {
    var bytes: Bytes { return Bytes(self) }
}

public extension String {
    var bytes: Bytes { return Bytes(self.utf8) }
}
