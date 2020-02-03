// UIDevice+OSVersion.swift
//
// Copyright (c) 2020 Burak Uzunboy
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#if !os(macOS) && !os(watchOS)
import UIKit

public extension UIDevice {
    
    /// Methods to compare and check OS versions of the device.
    class systemVersion {
        
        /**
         Checks whether the OS version is equal to specified one.
         - parameter version: OS version to check - e.g. "11.2"
         - returns: `true` if they are equal.
         */
        class func equal(to version: String) -> Bool {
            return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedSame
        }
        
        /**
         Checks whether the OS version is greater than the specified one.
         - parameter version: OS version to check - e.g. "11.2"
         - returns: `true` if OS is greater.
         */
        class func greater(than version: String) -> Bool {
            return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedDescending
        }
        
        /**
         Checks whether the OS version is greater than or equal to specified one.
         - parameter version: OS version to check - e.g. "11.2"
         - returns: `true` if OS is greater or equal.
         */
        class func greaterOrEqual(to version: String) -> Bool {
            return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedAscending
        }
        
        /**
         Checks whether the OS version is less than the specified one.
         - parameter version: OS version to check - e.g. "11.2"
         - returns: `true` if OS is less.
         */
        class func less(than version: String) -> Bool {
            return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedAscending
        }
        
        /**
         Checks whether the OS version is less than or equal to specified one.
         - parameter version: OS version to check - e.g. "11.2"
         - returns: `true` if OS is less or equal.
         */
        class func lessOrEqual(to version: String) -> Bool {
            return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedDescending
        }
    }
    
}
#endif
