/// Generated by the Protocol Buffers 3.6.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "unittest_import.proto"
/// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct ProtobufUnittestImport { }

public extension ProtobufUnittestImport {
    public struct UnittestImportRoot {
        public static let `default` = UnittestImportRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
            ProtobufUnittestImport.UnittestImportPublicRoot.default.registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }



    //Enum type declaration start 

    public enum ImportEnum:Int32, GeneratedEnum {
        case importFoo = 7
        case importBar = 8
        case importBaz = 9
        public func toString() -> String {
            switch self {
            case .importFoo: return "IMPORT_FOO"
            case .importBar: return "IMPORT_BAR"
            case .importBaz: return "IMPORT_BAZ"
            }
        }
        public static func fromString(_ str:String) throws -> ProtobufUnittestImport.ImportEnum {
            switch str {
            case "IMPORT_FOO":    return .importFoo
            case "IMPORT_BAR":    return .importBar
            case "IMPORT_BAZ":    return .importBaz
            default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion failed.")
            }
        }
        public var debugDescription:String { return getDescription() }
        public var description:String { return getDescription() }
        private func getDescription() -> String { 
            switch self {
            case .importFoo: return ".importFoo"
            case .importBar: return ".importBar"
            case .importBaz: return ".importBaz"
            }
        }
        public var hashValue:Int {
            return self.rawValue.hashValue
        }
        public static func ==(lhs:ImportEnum, rhs:ImportEnum) -> Bool {
            return lhs.hashValue == rhs.hashValue
        }
    }

    //Enum type declaration end 

    final public class ImportMessage : GeneratedMessage {
        public typealias BuilderType = ProtobufUnittestImport.ImportMessage.Builder

        public static func == (lhs: ProtobufUnittestImport.ImportMessage, rhs: ProtobufUnittestImport.ImportMessage) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        public fileprivate(set) var d:Int32! = nil
        public fileprivate(set) var hasD:Bool = false

        required public init() {
            super.init()
        }
        override public func isInitialized() throws {
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasD {
                try codedOutputStream.writeInt32(fieldNumber: 1, value:d)
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasD {
                serialize_size += d.computeInt32Size(fieldNumber: 1)
            }
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
            return ProtobufUnittestImport.ImportMessage.classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
        }
        public func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
            return classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return ProtobufUnittestImport.ImportMessage.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return ProtobufUnittestImport.ImportMessage.Builder()
        }
        public func toBuilder() throws -> ProtobufUnittestImport.ImportMessage.Builder {
            return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
            return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            try isInitialized()
            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasD {
                jsonMap["d"] = Int(d)
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.ImportMessage {
            return try ProtobufUnittestImport.ImportMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data, options: JSONSerialization.ReadingOptions = []) throws -> ProtobufUnittestImport.ImportMessage {
            return try ProtobufUnittestImport.ImportMessage.Builder.fromJSONToBuilder(data:data, options:options).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasD {
                output += "\(indent) d: \(String(describing: d)) \n"
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasD {
                    hashCode = (hashCode &* 31) &+ d.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "ProtobufUnittestImport.ImportMessage"
        }
        override public func className() -> String {
            return "ProtobufUnittestImport.ImportMessage"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:ProtobufUnittestImport.ImportMessage = ProtobufUnittestImport.ImportMessage()
            public func getMessage() -> ProtobufUnittestImport.ImportMessage {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            public var d:Int32 {
                get {
                    return builderResult.d
                }
                set (value) {
                    builderResult.hasD = true
                    builderResult.d = value
                }
            }
            public var hasD:Bool {
                get {
                    return builderResult.hasD
                }
            }
            @discardableResult
            public func setD(_ value:Int32) -> ProtobufUnittestImport.ImportMessage.Builder {
                self.d = value
                return self
            }
            @discardableResult
            public func clearD() -> ProtobufUnittestImport.ImportMessage.Builder{
                builderResult.hasD = false
                builderResult.d = nil
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> ProtobufUnittestImport.ImportMessage.Builder {
                builderResult = ProtobufUnittestImport.ImportMessage()
                return self
            }
            override public func clone() throws -> ProtobufUnittestImport.ImportMessage.Builder {
                return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> ProtobufUnittestImport.ImportMessage {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> ProtobufUnittestImport.ImportMessage {
                let returnMe:ProtobufUnittestImport.ImportMessage = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
                if other == ProtobufUnittestImport.ImportMessage() {
                    return self
                }
                if other.hasD {
                    d = other.d
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 8:
                        d = try codedInputStream.readInt32()

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> ProtobufUnittestImport.ImportMessage.Builder {
                let resultDecodedBuilder = ProtobufUnittestImport.ImportMessage.Builder()
                if let jsonValueD = jsonMap["d"] as? Int {
                    resultDecodedBuilder.d = Int32(jsonValueD)
                } else if let jsonValueD = jsonMap["d"] as? String {
                    resultDecodedBuilder.d = Int32(jsonValueD)!
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data, options: JSONSerialization.ReadingOptions = []) throws -> ProtobufUnittestImport.ImportMessage.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: options)
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try ProtobufUnittestImport.ImportMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension ProtobufUnittestImport.ImportMessage: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittestImport.ImportMessage> {
        var mergedArray = Array<ProtobufUnittestImport.ImportMessage>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessage? {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
        return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "d": return self.d
        default: return nil
        }
    }
}
extension ProtobufUnittestImport.ImportMessage.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = ProtobufUnittestImport.ImportMessage
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "d": return self.d
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "d":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.d = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
