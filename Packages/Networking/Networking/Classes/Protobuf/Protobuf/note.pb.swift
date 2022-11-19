// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: note.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

public struct Note_BaseResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var error: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_CreateNoteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var title: String = String()

  public var content: Data = Data()

  public var noteType: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_EditNoteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var noteID: String = String()

  public var title: String = String()

  public var content: Data = Data()

  public var noteType: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_DeleteNoteRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var noteID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_Empty {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_UserNoteResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var title: String = String()

  public var content: Data = Data()

  public var noteType: String = String()

  public var createdAt: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_GetUserNotesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Note_GetUserNotesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var userNotes: [Note_UserNoteResponse] = []

  public var error: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Note_BaseResponse: @unchecked Sendable {}
extension Note_CreateNoteRequest: @unchecked Sendable {}
extension Note_EditNoteRequest: @unchecked Sendable {}
extension Note_DeleteNoteRequest: @unchecked Sendable {}
extension Note_Empty: @unchecked Sendable {}
extension Note_UserNoteResponse: @unchecked Sendable {}
extension Note_GetUserNotesRequest: @unchecked Sendable {}
extension Note_GetUserNotesResponse: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "note"

extension Note_BaseResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BaseResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.error) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.error.isEmpty {
      try visitor.visitSingularStringField(value: self.error, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_BaseResponse, rhs: Note_BaseResponse) -> Bool {
    if lhs.error != rhs.error {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_CreateNoteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateNoteRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "content"),
    3: .standard(proto: "note_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.content) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.noteType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularBytesField(value: self.content, fieldNumber: 2)
    }
    if !self.noteType.isEmpty {
      try visitor.visitSingularStringField(value: self.noteType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_CreateNoteRequest, rhs: Note_CreateNoteRequest) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.content != rhs.content {return false}
    if lhs.noteType != rhs.noteType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_EditNoteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EditNoteRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "note_id"),
    2: .same(proto: "title"),
    3: .same(proto: "content"),
    4: .standard(proto: "note_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.noteID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.content) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.noteType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.noteID.isEmpty {
      try visitor.visitSingularStringField(value: self.noteID, fieldNumber: 1)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularBytesField(value: self.content, fieldNumber: 3)
    }
    if !self.noteType.isEmpty {
      try visitor.visitSingularStringField(value: self.noteType, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_EditNoteRequest, rhs: Note_EditNoteRequest) -> Bool {
    if lhs.noteID != rhs.noteID {return false}
    if lhs.title != rhs.title {return false}
    if lhs.content != rhs.content {return false}
    if lhs.noteType != rhs.noteType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_DeleteNoteRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteNoteRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "note_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.noteID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.noteID.isEmpty {
      try visitor.visitSingularStringField(value: self.noteID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_DeleteNoteRequest, rhs: Note_DeleteNoteRequest) -> Bool {
    if lhs.noteID != rhs.noteID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_Empty: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Empty"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_Empty, rhs: Note_Empty) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_UserNoteResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UserNoteResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "title"),
    3: .same(proto: "content"),
    4: .standard(proto: "note_type"),
    5: .standard(proto: "created_at"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.title) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.content) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.noteType) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.createdAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 2)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularBytesField(value: self.content, fieldNumber: 3)
    }
    if !self.noteType.isEmpty {
      try visitor.visitSingularStringField(value: self.noteType, fieldNumber: 4)
    }
    if self.createdAt != 0 {
      try visitor.visitSingularInt64Field(value: self.createdAt, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_UserNoteResponse, rhs: Note_UserNoteResponse) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.title != rhs.title {return false}
    if lhs.content != rhs.content {return false}
    if lhs.noteType != rhs.noteType {return false}
    if lhs.createdAt != rhs.createdAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_GetUserNotesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUserNotesRequest"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_GetUserNotesRequest, rhs: Note_GetUserNotesRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Note_GetUserNotesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetUserNotesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_notes"),
    2: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.userNotes) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.error) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userNotes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.userNotes, fieldNumber: 1)
    }
    if !self.error.isEmpty {
      try visitor.visitSingularStringField(value: self.error, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Note_GetUserNotesResponse, rhs: Note_GetUserNotesResponse) -> Bool {
    if lhs.userNotes != rhs.userNotes {return false}
    if lhs.error != rhs.error {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
