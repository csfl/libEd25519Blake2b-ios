//
//  Bytes.swift
//  libEd25519Blake2b
//
//  Created by Stone on 2018/9/3.
//

import Foundation

public typealias Bytes = Array<UInt8>

extension Array where Element == UInt8 {
    init (count bytes: Int) {
        self.init(repeating: 0, count: bytes)
    }
}
