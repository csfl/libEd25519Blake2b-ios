//
//  Blake2.swift
//  libEd25519Blake2b
//
//  Created by Stone on 2018/9/4.
//

import Foundation

public struct Blake2b {

    public static func hash(outLength: Int, in: Bytes, key: Bytes? = nil) -> Bytes? {
        var out = Bytes(count: outLength)
        if let key = key {
            blake2b(&out, outLength, `in`, `in`.count, key, key.count)
        } else {
            blake2b(&out, outLength, `in`, `in`.count, nil, 0)
        }
        return out
    }
}
