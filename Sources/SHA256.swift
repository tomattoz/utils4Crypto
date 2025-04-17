//  Created by Ivan Kh on 14.09.2023.

import Foundation
import Crypto

public extension String {
    var sha256: String {
        SHA256
            .hash(data: Data(utf8))
            .compactMap { String(format: "%02x", $0) }
            .joined()
    }
    
    var sha256short: String {
        SHA256
            .hash(data: Data(utf8))
            .compactMap { String(format: "%02x", $0) }
            .prefix(3)
            .joined()
    }
}
