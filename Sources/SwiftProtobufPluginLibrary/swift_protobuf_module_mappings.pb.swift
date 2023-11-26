// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: swift_protobuf_module_mappings.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/SwiftProtobufPluginLibrary/swift_protobuf_module_mappings.proto - Swift Module mappings configuration
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Configuration used to define the mappings for generated proto files
/// to the Swift module they will be included in.
public struct SwiftProtobuf_GenSwift_ModuleMappings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The mappings.
  public var mapping: [SwiftProtobuf_GenSwift_ModuleMappings.Entry] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Individual listing of the module name and the files that will go
  /// into it.
  public struct Entry {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The Swift module name that will be imported and used to scope all
    /// the types from the given proto files.
    public var moduleName: String = String()

    /// The proto files that should be considered it this module.  The values
    /// should be the how they are expressed to the generated; i.e. - how they
    /// are used in import states to be used from other files, so `my_file.proto`
    /// or `path/to/file.proto`.
    public var protoFilePath: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension SwiftProtobuf_GenSwift_ModuleMappings: @unchecked Sendable {}
extension SwiftProtobuf_GenSwift_ModuleMappings.Entry: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_protobuf.gen_swift"

extension SwiftProtobuf_GenSwift_ModuleMappings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ModuleMappings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mapping"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.mapping) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try visitor.visitRepeatedMessageField(maybeEmptyValue: self.mapping, fieldNumber: 1)
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: SwiftProtobuf_GenSwift_ModuleMappings, rhs: SwiftProtobuf_GenSwift_ModuleMappings) -> Bool {
    if lhs.mapping != rhs.mapping {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftProtobuf_GenSwift_ModuleMappings.Entry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = SwiftProtobuf_GenSwift_ModuleMappings.protoMessageName + ".Entry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "module_name"),
    2: .standard(proto: "proto_file_path"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.moduleName) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.protoFilePath) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.moduleName.isEmpty {
      try visitor.visitSingularStringField(value: self.moduleName, fieldNumber: 1)
    }
    try visitor.visitRepeatedStringField(maybeEmptyValue: self.protoFilePath, fieldNumber: 2)
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: SwiftProtobuf_GenSwift_ModuleMappings.Entry, rhs: SwiftProtobuf_GenSwift_ModuleMappings.Entry) -> Bool {
    if lhs.moduleName != rhs.moduleName {return false}
    if lhs.protoFilePath != rhs.protoFilePath {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
