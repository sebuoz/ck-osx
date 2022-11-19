//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: video_call.proto
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


/// Usage: instantiate `VideoCall_VideoCallClient`, then call methods of this protocol to make API calls.
internal protocol VideoCall_VideoCallClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? { get }

  func video_call(
    _ request: VideoCall_VideoCallRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<VideoCall_VideoCallRequest, VideoCall_ServerResponse>

  func update_call(
    _ request: VideoCall_UpdateCallRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<VideoCall_UpdateCallRequest, VideoCall_BaseResponse>

  func workspace_video_call(
    _ request: VideoCall_WorkspaceVideoCallRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse>

  func workspace_update_call(
    _ request: VideoCall_WorkspaceUpdateCallRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse>
}

extension VideoCall_VideoCallClientProtocol {
  internal var serviceName: String {
    return "video_call.VideoCall"
  }

  /// Unary call to video_call
  ///
  /// - Parameters:
  ///   - request: Request to send to video_call.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func video_call(
    _ request: VideoCall_VideoCallRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<VideoCall_VideoCallRequest, VideoCall_ServerResponse> {
    return self.makeUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makevideo_callInterceptors() ?? []
    )
  }

  /// Unary call to update_call
  ///
  /// - Parameters:
  ///   - request: Request to send to update_call.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func update_call(
    _ request: VideoCall_UpdateCallRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<VideoCall_UpdateCallRequest, VideoCall_BaseResponse> {
    return self.makeUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeupdate_callInterceptors() ?? []
    )
  }

  /// Unary call to workspace_video_call
  ///
  /// - Parameters:
  ///   - request: Request to send to workspace_video_call.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func workspace_video_call(
    _ request: VideoCall_WorkspaceVideoCallRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse> {
    return self.makeUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_video_callInterceptors() ?? []
    )
  }

  /// Unary call to workspace_update_call
  ///
  /// - Parameters:
  ///   - request: Request to send to workspace_update_call.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func workspace_update_call(
    _ request: VideoCall_WorkspaceUpdateCallRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse> {
    return self.makeUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_update_callInterceptors() ?? []
    )
  }
}

#if compiler(>=5.6)
@available(*, deprecated)
extension VideoCall_VideoCallClient: @unchecked Sendable {}
#endif // compiler(>=5.6)

@available(*, deprecated, renamed: "VideoCall_VideoCallNIOClient")
internal final class VideoCall_VideoCallClient: VideoCall_VideoCallClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the video_call.VideoCall service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct VideoCall_VideoCallNIOClient: VideoCall_VideoCallClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol?

  /// Creates a client for the video_call.VideoCall service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#if compiler(>=5.6)
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol VideoCall_VideoCallAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? { get }

  func makeVideoCallCall(
    _ request: VideoCall_VideoCallRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<VideoCall_VideoCallRequest, VideoCall_ServerResponse>

  func makeUpdateCallCall(
    _ request: VideoCall_UpdateCallRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<VideoCall_UpdateCallRequest, VideoCall_BaseResponse>

  func makeWorkspaceVideoCallCall(
    _ request: VideoCall_WorkspaceVideoCallRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse>

  func makeWorkspaceUpdateCallCall(
    _ request: VideoCall_WorkspaceUpdateCallRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension VideoCall_VideoCallAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return VideoCall_VideoCallClientMetadata.serviceDescriptor
  }

  internal var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeVideoCallCall(
    _ request: VideoCall_VideoCallRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<VideoCall_VideoCallRequest, VideoCall_ServerResponse> {
    return self.makeAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makevideo_callInterceptors() ?? []
    )
  }

  internal func makeUpdateCallCall(
    _ request: VideoCall_UpdateCallRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<VideoCall_UpdateCallRequest, VideoCall_BaseResponse> {
    return self.makeAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeupdate_callInterceptors() ?? []
    )
  }

  internal func makeWorkspaceVideoCallCall(
    _ request: VideoCall_WorkspaceVideoCallRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse> {
    return self.makeAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_video_callInterceptors() ?? []
    )
  }

  internal func makeWorkspaceUpdateCallCall(
    _ request: VideoCall_WorkspaceUpdateCallRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse> {
    return self.makeAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_update_callInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension VideoCall_VideoCallAsyncClientProtocol {
  internal func video_call(
    _ request: VideoCall_VideoCallRequest,
    callOptions: CallOptions? = nil
  ) async throws -> VideoCall_ServerResponse {
    return try await self.performAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makevideo_callInterceptors() ?? []
    )
  }

  internal func update_call(
    _ request: VideoCall_UpdateCallRequest,
    callOptions: CallOptions? = nil
  ) async throws -> VideoCall_BaseResponse {
    return try await self.performAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeupdate_callInterceptors() ?? []
    )
  }

  internal func workspace_video_call(
    _ request: VideoCall_WorkspaceVideoCallRequest,
    callOptions: CallOptions? = nil
  ) async throws -> VideoCall_ServerResponse {
    return try await self.performAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_video_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_video_callInterceptors() ?? []
    )
  }

  internal func workspace_update_call(
    _ request: VideoCall_WorkspaceUpdateCallRequest,
    callOptions: CallOptions? = nil
  ) async throws -> VideoCall_BaseResponse {
    return try await self.performAsyncUnaryCall(
      path: VideoCall_VideoCallClientMetadata.Methods.workspace_update_call.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeworkspace_update_callInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct VideoCall_VideoCallAsyncClient: VideoCall_VideoCallAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: VideoCall_VideoCallClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

#endif // compiler(>=5.6)

internal protocol VideoCall_VideoCallClientInterceptorFactoryProtocol: GRPCSendable {

  /// - Returns: Interceptors to use when invoking 'video_call'.
  func makevideo_callInterceptors() -> [ClientInterceptor<VideoCall_VideoCallRequest, VideoCall_ServerResponse>]

  /// - Returns: Interceptors to use when invoking 'update_call'.
  func makeupdate_callInterceptors() -> [ClientInterceptor<VideoCall_UpdateCallRequest, VideoCall_BaseResponse>]

  /// - Returns: Interceptors to use when invoking 'workspace_video_call'.
  func makeworkspace_video_callInterceptors() -> [ClientInterceptor<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse>]

  /// - Returns: Interceptors to use when invoking 'workspace_update_call'.
  func makeworkspace_update_callInterceptors() -> [ClientInterceptor<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse>]
}

internal enum VideoCall_VideoCallClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "VideoCall",
    fullName: "video_call.VideoCall",
    methods: [
      VideoCall_VideoCallClientMetadata.Methods.video_call,
      VideoCall_VideoCallClientMetadata.Methods.update_call,
      VideoCall_VideoCallClientMetadata.Methods.workspace_video_call,
      VideoCall_VideoCallClientMetadata.Methods.workspace_update_call,
    ]
  )

  internal enum Methods {
    internal static let video_call = GRPCMethodDescriptor(
      name: "video_call",
      path: "/video_call.VideoCall/video_call",
      type: GRPCCallType.unary
    )

    internal static let update_call = GRPCMethodDescriptor(
      name: "update_call",
      path: "/video_call.VideoCall/update_call",
      type: GRPCCallType.unary
    )

    internal static let workspace_video_call = GRPCMethodDescriptor(
      name: "workspace_video_call",
      path: "/video_call.VideoCall/workspace_video_call",
      type: GRPCCallType.unary
    )

    internal static let workspace_update_call = GRPCMethodDescriptor(
      name: "workspace_update_call",
      path: "/video_call.VideoCall/workspace_update_call",
      type: GRPCCallType.unary
    )
  }
}

/// To build a server, implement a class that conforms to this protocol.
internal protocol VideoCall_VideoCallProvider: CallHandlerProvider {
  var interceptors: VideoCall_VideoCallServerInterceptorFactoryProtocol? { get }

  func video_call(request: VideoCall_VideoCallRequest, context: StatusOnlyCallContext) -> EventLoopFuture<VideoCall_ServerResponse>

  func update_call(request: VideoCall_UpdateCallRequest, context: StatusOnlyCallContext) -> EventLoopFuture<VideoCall_BaseResponse>

  func workspace_video_call(request: VideoCall_WorkspaceVideoCallRequest, context: StatusOnlyCallContext) -> EventLoopFuture<VideoCall_ServerResponse>

  func workspace_update_call(request: VideoCall_WorkspaceUpdateCallRequest, context: StatusOnlyCallContext) -> EventLoopFuture<VideoCall_BaseResponse>
}

extension VideoCall_VideoCallProvider {
  internal var serviceName: Substring {
    return VideoCall_VideoCallServerMetadata.serviceDescriptor.fullName[...]
  }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "video_call":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_VideoCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_ServerResponse>(),
        interceptors: self.interceptors?.makevideo_callInterceptors() ?? [],
        userFunction: self.video_call(request:context:)
      )

    case "update_call":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_UpdateCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_BaseResponse>(),
        interceptors: self.interceptors?.makeupdate_callInterceptors() ?? [],
        userFunction: self.update_call(request:context:)
      )

    case "workspace_video_call":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_WorkspaceVideoCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_ServerResponse>(),
        interceptors: self.interceptors?.makeworkspace_video_callInterceptors() ?? [],
        userFunction: self.workspace_video_call(request:context:)
      )

    case "workspace_update_call":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_WorkspaceUpdateCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_BaseResponse>(),
        interceptors: self.interceptors?.makeworkspace_update_callInterceptors() ?? [],
        userFunction: self.workspace_update_call(request:context:)
      )

    default:
      return nil
    }
  }
}

#if compiler(>=5.6)

/// To implement a server, implement an object which conforms to this protocol.
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol VideoCall_VideoCallAsyncProvider: CallHandlerProvider {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: VideoCall_VideoCallServerInterceptorFactoryProtocol? { get }

  @Sendable func video_call(
    request: VideoCall_VideoCallRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> VideoCall_ServerResponse

  @Sendable func update_call(
    request: VideoCall_UpdateCallRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> VideoCall_BaseResponse

  @Sendable func workspace_video_call(
    request: VideoCall_WorkspaceVideoCallRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> VideoCall_ServerResponse

  @Sendable func workspace_update_call(
    request: VideoCall_WorkspaceUpdateCallRequest,
    context: GRPCAsyncServerCallContext
  ) async throws -> VideoCall_BaseResponse
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension VideoCall_VideoCallAsyncProvider {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return VideoCall_VideoCallServerMetadata.serviceDescriptor
  }

  internal var serviceName: Substring {
    return VideoCall_VideoCallServerMetadata.serviceDescriptor.fullName[...]
  }

  internal var interceptors: VideoCall_VideoCallServerInterceptorFactoryProtocol? {
    return nil
  }

  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "video_call":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_VideoCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_ServerResponse>(),
        interceptors: self.interceptors?.makevideo_callInterceptors() ?? [],
        wrapping: self.video_call(request:context:)
      )

    case "update_call":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_UpdateCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_BaseResponse>(),
        interceptors: self.interceptors?.makeupdate_callInterceptors() ?? [],
        wrapping: self.update_call(request:context:)
      )

    case "workspace_video_call":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_WorkspaceVideoCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_ServerResponse>(),
        interceptors: self.interceptors?.makeworkspace_video_callInterceptors() ?? [],
        wrapping: self.workspace_video_call(request:context:)
      )

    case "workspace_update_call":
      return GRPCAsyncServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<VideoCall_WorkspaceUpdateCallRequest>(),
        responseSerializer: ProtobufSerializer<VideoCall_BaseResponse>(),
        interceptors: self.interceptors?.makeworkspace_update_callInterceptors() ?? [],
        wrapping: self.workspace_update_call(request:context:)
      )

    default:
      return nil
    }
  }
}

#endif // compiler(>=5.6)

internal protocol VideoCall_VideoCallServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'video_call'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makevideo_callInterceptors() -> [ServerInterceptor<VideoCall_VideoCallRequest, VideoCall_ServerResponse>]

  /// - Returns: Interceptors to use when handling 'update_call'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeupdate_callInterceptors() -> [ServerInterceptor<VideoCall_UpdateCallRequest, VideoCall_BaseResponse>]

  /// - Returns: Interceptors to use when handling 'workspace_video_call'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeworkspace_video_callInterceptors() -> [ServerInterceptor<VideoCall_WorkspaceVideoCallRequest, VideoCall_ServerResponse>]

  /// - Returns: Interceptors to use when handling 'workspace_update_call'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeworkspace_update_callInterceptors() -> [ServerInterceptor<VideoCall_WorkspaceUpdateCallRequest, VideoCall_BaseResponse>]
}

internal enum VideoCall_VideoCallServerMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "VideoCall",
    fullName: "video_call.VideoCall",
    methods: [
      VideoCall_VideoCallServerMetadata.Methods.video_call,
      VideoCall_VideoCallServerMetadata.Methods.update_call,
      VideoCall_VideoCallServerMetadata.Methods.workspace_video_call,
      VideoCall_VideoCallServerMetadata.Methods.workspace_update_call,
    ]
  )

  internal enum Methods {
    internal static let video_call = GRPCMethodDescriptor(
      name: "video_call",
      path: "/video_call.VideoCall/video_call",
      type: GRPCCallType.unary
    )

    internal static let update_call = GRPCMethodDescriptor(
      name: "update_call",
      path: "/video_call.VideoCall/update_call",
      type: GRPCCallType.unary
    )

    internal static let workspace_video_call = GRPCMethodDescriptor(
      name: "workspace_video_call",
      path: "/video_call.VideoCall/workspace_video_call",
      type: GRPCCallType.unary
    )

    internal static let workspace_update_call = GRPCMethodDescriptor(
      name: "workspace_update_call",
      path: "/video_call.VideoCall/workspace_update_call",
      type: GRPCCallType.unary
    )
  }
}