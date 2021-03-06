////////////////////////////////////////////////////////////////////////////
//
// Copyright 2015 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

import Realm

/**
 `ObjectiveCSupport` is a class providing methods for Swift/Objective-C interoperability.

 With `ObjectiveCSupport` you can either retrieve the internal ObjC representations of the Realm objects,
 or wrap ObjC Realm objects with their Swift equivalents.

 Use this to provide public APIs that support both platforms.

 :nodoc:
 **/
public final class ObjectiveCSupport {

#if swift(>=3.0)

    /// Convert a `Results` to a `RLMResults`.
    public static func convert<T>(object: Results<T>) -> RLMResults<RLMObject> {
        return object.rlmResults
    }

    /// Convert a `RLMResults` to a `Results`.
    public static func convert(object: RLMResults<RLMObject>) -> Results<Object> {
        return Results(object)
    }

    /// Convert a `List` to a `RLMArray`.
    public static func convert<T>(object: List<T>) -> RLMArray<RLMObject> {
        return object._rlmArray
    }

    /// Convert a `RLMArray` to a `List`.
    public static func convert(object: RLMArray<RLMObject>) -> List<Object> {
        return List(rlmArray: object)
    }

    /// Convert a `LinkingObjects` to a `RLMResults`.
    public static func convert<T>(object: LinkingObjects<T>) -> RLMResults<RLMObject> {
        return object.rlmResults
    }

    /// Convert a `RLMLinkingObjects` to a `Results`.
    public static func convert(object: RLMLinkingObjects<RLMObject>) -> Results<Object> {
        return Results(object)
    }

#else

    /// Convert a `Results` to a `RLMResults`.
    public static func convert<T>(_ object: Results<T>) -> RLMResults {
        return object.rlmResults
    }

    /// Convert a `RLMResults` to a `Results`.
    public static func convert(_ object: RLMResults) -> Results<Object> {
        return Results(object)
    }

    /// Convert a `List` to a `RLMArray`.
    public static func convert<T>(_ object: List<T>) -> RLMArray {
        return object._rlmArray
    }

    /// Convert a `RLMArray` to a `List`.
    public static func convert(_ object: RLMArray) -> List<Object> {
        return List(rlmArray: object)
    }

    /// Convert a `LinkingObjects` to a `RLMResults`.
    public static func convert<T>(_ object: LinkingObjects<T>) -> RLMResults {
        return object.rlmResults
    }

    /// Convert a `RLMLinkingObjects` to a `Results`.
    public static func convert(_ object: RLMLinkingObjects) -> Results<Object> {
        return Results(object)
    }

#endif

    /// Convert a `Realm` to a `RLMRealm`.
    public static func convert(_ object: Realm) -> RLMRealm {
        return object.rlmRealm
    }

    /// Convert a `RLMRealm` to a `Realm`.
    public static func convert(_ object: RLMRealm) -> Realm {
        return Realm(object)
    }

    /// Convert a `Migration` to a `RLMMigration`.
    public static func convert(_ object: Migration) -> RLMMigration {
        return object.rlmMigration
    }

    /// Convert a `RLMMigration` to a `Migration`.
    public static func convert(_ object: RLMMigration) -> Migration {
        return Migration(object)
    }

    /// Convert a `ObjectSchema` to a `RLMObjectSchema`.
    public static func convert(_ object: ObjectSchema) -> RLMObjectSchema {
        return object.rlmObjectSchema
    }

    /// Convert a `RLMObjectSchema` to a `ObjectSchema`.
    public static func convert(_ object: RLMObjectSchema) -> ObjectSchema {
        return ObjectSchema(object)
    }

    /// Convert a `Property` to a `RLMProperty`.
    public static func convert(_ object: Property) -> RLMProperty {
        return object.rlmProperty
    }

    /// Convert a `RLMProperty` to a `Property`.
    public static func convert(_ object: RLMProperty) -> Property {
        return Property(object)
    }

    /// Convert a `Realm.Configuration` to a `RLMRealmConfiguration`.
    public static func convert(_ object: Realm.Configuration) -> RLMRealmConfiguration {
        return object.rlmConfiguration
    }

    /// Convert a `RLMRealmConfiguration` to a `Realm.Configuration`.
    public static func convert(_ object: RLMRealmConfiguration) -> Realm.Configuration {
        return .fromRLMRealmConfiguration(object)
    }

    /// Convert a `Schema` to a `RLMSchema`.
    public static func convert(_ object: Schema) -> RLMSchema {
        return object.rlmSchema
    }

    /// Convert a `RLMSchema` to a `Schema`.
    public static func convert(_ object: RLMSchema) -> Schema {
        return Schema(object)
    }

    /// Convert a `SortDescriptor` to a `RLMSortDescriptor`.
    public static func convert(_ object: SortDescriptor) -> RLMSortDescriptor {
        return object.rlmSortDescriptorValue
    }

    /// Convert a `RLMSortDescriptor` to a `SortDescriptor`.
    public static func convert(_ object: RLMSortDescriptor) -> SortDescriptor {
        return SortDescriptor(property: object.property, ascending: object.ascending)
    }

    /// Convert a `SyncCredentials` to a `RLMSyncCredentials`.
    public static func convert(_ object: SyncCredentials) -> RLMSyncCredentials {
        return RLMSyncCredentials(object)
    }

    /// Convert a `RLMSyncCredentials` to a `SyncCredentials`.
    public static func convert(_ object: RLMSyncCredentials) -> SyncCredentials {
        return SyncCredentials(object)
    }
}
