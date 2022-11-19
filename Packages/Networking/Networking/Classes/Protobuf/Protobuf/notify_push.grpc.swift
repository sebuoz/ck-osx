//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: notify_push.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Method
///
/// Usage: instantiate `NotifyPush_NotifyPushClient`, then call methods of this protocol to make API calls.
internal protocol NotifyPush_NotifyPushClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? { get }

  func register_token(
    _ request: NotifyPush_RegisterTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse>

  func push_text(
    _ request: NotifyPush_PushTextRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<NotifyPush_PushTextRequest, NotifyPush_BaseResponse>

  func push_voip(
    _ request: NotifyPush_PushVoipRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse>
}

extension NotifyPush_NotifyPushClientProtocol {
  internal var serviceName: String {
    return "notify_push.NotifyPush"
  }

  /// Unary call to register_token
  ///
  /// - Parameters:
  ///   - request: Request to send to register_token.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func register_token(
    _ request: NotifyPush_RegisterTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse> {
    return self.makeUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.register_token.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeregister_tokenInterceptors() ?? []
    )
  }

  /// Unary call to push_text
  ///
  /// - Parameters:
  ///   - request: Request to send to push_text.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func push_text(
    _ request: NotifyPush_PushTextRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<NotifyPush_PushTextRequest, NotifyPush_BaseResponse> {
    return self.makeUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_text.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_textInterceptors() ?? []
    )
  }

  /// Unary call to push_voip
  ///
  /// - Parameters:
  ///   - request: Request to send to push_voip.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func push_voip(
    _ request: NotifyPush_PushVoipRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse> {
    return self.makeUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_voip.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_voipInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension NotifyPush_NotifyPushClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "NotifyPush_NotifyPushNIOClient")
internal final class NotifyPush_NotifyPushClient: NotifyPush_NotifyPushClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the notify_push.NotifyPush service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct NotifyPush_NotifyPushNIOClient: NotifyPush_NotifyPushClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol?

  /// Creates a client for the notify_push.NotifyPush service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
/// Method
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol NotifyPush_NotifyPushAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? { get }

  func makeRegisterTokenCall(
    _ request: NotifyPush_RegisterTokenRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse>

  func makePushTextCall(
    _ request: NotifyPush_PushTextRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<NotifyPush_PushTextRequest, NotifyPush_BaseResponse>

  func makePushVoipCall(
    _ request: NotifyPush_PushVoipRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension NotifyPush_NotifyPushAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return NotifyPush_NotifyPushClientMetadata.serviceDescriptor
  }

  internal var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeRegisterTokenCall(
    _ request: NotifyPush_RegisterTokenRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse> {
    return self.makeAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.register_token.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeregister_tokenInterceptors() ?? []
    )
  }

  internal func makePushTextCall(
    _ request: NotifyPush_PushTextRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<NotifyPush_PushTextRequest, NotifyPush_BaseResponse> {
    return self.makeAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_text.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_textInterceptors() ?? []
    )
  }

  internal func makePushVoipCall(
    _ request: NotifyPush_PushVoipRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse> {
    return self.makeAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_voip.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_voipInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension NotifyPush_NotifyPushAsyncClientProtocol {
  internal func register_token(
    _ request: NotifyPush_RegisterTokenRequest,
    callOptions: CallOptions? = nil
  ) async throws -> NotifyPush_BaseResponse {
    return try await self.performAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.register_token.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeregister_tokenInterceptors() ?? []
    )
  }

  internal func push_text(
    _ request: NotifyPush_PushTextRequest,
    callOptions: CallOptions? = nil
  ) async throws -> NotifyPush_BaseResponse {
    return try await self.performAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_text.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_textInterceptors() ?? []
    )
  }

  internal func push_voip(
    _ request: NotifyPush_PushVoipRequest,
    callOptions: CallOptions? = nil
  ) async throws -> NotifyPush_BaseResponse {
    return try await self.performAsyncUnaryCall(
      path: NotifyPush_NotifyPushClientMetadata.Methods.push_voip.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makepush_voipInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct NotifyPush_NotifyPushAsyncClient: NotifyPush_NotifyPushAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: NotifyPush_NotifyPushClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

internal protocol NotifyPush_NotifyPushClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'register_token'.
  func makeregister_tokenInterceptors() -> [ClientInterceptor<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse>]

  /// - Returns: Interceptors to use when invoking 'push_text'.
  func makepush_textInterceptors() -> [ClientInterceptor<NotifyPush_PushTextRequest, NotifyPush_BaseResponse>]

  /// - Returns: Interceptors to use when invoking 'push_voip'.
  func makepush_voipInterceptors() -> [ClientInterceptor<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse>]
}

internal enum NotifyPush_NotifyPushClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "NotifyPush",
    fullName: "notify_push.NotifyPush",
    methods: [
      NotifyPush_NotifyPushClientMetadata.Methods.register_token,
      NotifyPush_NotifyPushClientMetadata.Methods.push_text,
      NotifyPush_NotifyPushClientMetadata.Methods.push_voip,
    ]
  )

  internal enum Methods {
    internal static let register_token = GRPCMethodDescriptor(
      name: "register_token",
      path: "/notify_push.NotifyPush/register_token",
      type: GRPCCallType.unary
    )

    internal static let push_text = GRPCMethodDescriptor(
      name: "push_text",
      path: "/notify_push.NotifyPush/push_text",
      type: GRPCCallType.unary
    )

    internal static let push_voip = GRPCMethodDescriptor(
      name: "push_voip",
      path: "/notify_push.NotifyPush/push_voip",
      type: GRPCCallType.unary
    )
  }
}

/// Method
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol NotifyPush_NotifyPushProvider: CallHandlerProvider {
  var interceptors: NotifyPush_NotifyPushServerInterceptorFactoryProtocol? { get }

  func register_token(request: NotifyPush_RegisterTokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<NotifyPush_BaseResponse>

  func push_text(request: NotifyPush_PushTextRequest, context: StatusOnlyCallContext) -> EventLoopFuture<NotifyPush_BaseResponse>

  func push_voip(request: NotifyPush_PushVoipRequest, context: StatusOnlyCallContext) -> EventLoopFuture<NotifyPush_BaseResponse>
}

extension NotifyPush_NotifyPushProvider {
  internal var serviceName: Substring {
    return NotifyPush_NotifyPushServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "register_token":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_RegisterTokenRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makeregister_tokenInterceptors() ?? [],
        userFunction: self.register_token(request:context:)
      )

    case "push_text":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_PushTextRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makepush_textInterceptors() ?? [],
        userFunction: self.push_text(request:context:)
      )

    case "push_voip":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_PushVoipRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makepush_voipInterceptors() ?? [],
        userFunction: self.push_voip(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// Method
///
/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol NotifyPush_NotifyPushAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: NotifyPush_NotifyPushServerInterceptorFactoryProtocol? { get }

  @Sendable func register_token(
    request: NotifyPush_RegisterTokenRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> NotifyPush_BaseResponse

  @Sendable func push_text(
    request: NotifyPush_PushTextRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> NotifyPush_BaseResponse

  @Sendable func push_voip(
    request: NotifyPush_PushVoipRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> NotifyPush_BaseResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension NotifyPush_NotifyPushAsyncProvider {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return NotifyPush_NotifyPushServerMetadata.serviceDescriptor
  }

  internal var serviceName: Substring {
    return NotifyPush_NotifyPushServerMetadata.serviceDescriptor.fullName[...]
  }

  internal var interceptors: NotifyPush_NotifyPushServerInterceptorFactoryProtocol? {
    return nil
  }

  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "register_token":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_RegisterTokenRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makeregister_tokenInterceptors() ?? [],
        wrapping: self.register_token(request:context:)
      )

    case "push_text":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_PushTextRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makepush_textInterceptors() ?? [],
        wrapping: self.push_text(request:context:)
      )

    case "push_voip":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<NotifyPush_PushVoipRequest>(),
        responseSerializer: ProtobufSerializer<NotifyPush_BaseResponse>(),
        interceptors: self.interceptors?.makepush_voipInterceptors() ?? [],
        wrapping: self.push_voip(request:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

internal protocol NotifyPush_NotifyPushServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'register_token'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeregister_tokenInterceptors() -> [ServerInterceptor<NotifyPush_RegisterTokenRequest, NotifyPush_BaseResponse>]

  /// - Returns: Interceptors to use when handling 'push_text'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makepush_textInterceptors() -> [ServerInterceptor<NotifyPush_PushTextRequest, NotifyPush_BaseResponse>]

  /// - Returns: Interceptors to use when handling 'push_voip'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makepush_voipInterceptors() -> [ServerInterceptor<NotifyPush_PushVoipRequest, NotifyPush_BaseResponse>]
}

internal enum NotifyPush_NotifyPushServerMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "NotifyPush",
    fullName: "notify_push.NotifyPush",
    methods: [
      NotifyPush_NotifyPushServerMetadata.Methods.register_token,
      NotifyPush_NotifyPushServerMetadata.Methods.push_text,
      NotifyPush_NotifyPushServerMetadata.Methods.push_voip,
    ]
  )

  internal enum Methods {
    internal static let register_token = GRPCMethodDescriptor(
      name: "register_token",
      path: "/notify_push.NotifyPush/register_token",
      type: GRPCCallType.unary
    )

    internal static let push_text = GRPCMethodDescriptor(
      name: "push_text",
      path: "/notify_push.NotifyPush/push_text",
      type: GRPCCallType.unary
    )

    internal static let push_voip = GRPCMethodDescriptor(
      name: "push_voip",
      path: "/notify_push.NotifyPush/push_voip",
      type: GRPCCallType.unary
    )
  }
}