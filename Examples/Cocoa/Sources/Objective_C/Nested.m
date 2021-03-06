//
// Nested.m
// Autogenerated by Plank (https://pinterest.github.io/plank/)
//
// DO NOT EDIT - EDITS WILL BE OVERWRITTEN
// @generated
//

#import "Nested.h"

struct NestedDirtyProperties {
    unsigned int NestedDirtyPropertyIdentifier:1;
};

@interface Nested ()
@property (nonatomic, assign, readwrite) struct NestedDirtyProperties nestedDirtyProperties;
@end

@interface NestedBuilder ()
@property (nonatomic, assign, readwrite) struct NestedDirtyProperties nestedDirtyProperties;
@end

@implementation Nested
+ (NSString *)className
{
    return @"Nested";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"nested";
}
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithModelDictionary:dictionary];
}
- (instancetype)init
{
    return [self initWithModelDictionary:@{}];
}
- (instancetype)initWithModelDictionary:(NS_VALID_UNTIL_END_OF_SCOPE NSDictionary *)modelDictionary
{
    NSParameterAssert(modelDictionary);
    if (!modelDictionary) {
        return self;
    }
    if (!(self = [super init])) {
        return self;
    }
        {
            __unsafe_unretained id value = modelDictionary[@"id"]; // Collection will retain.
            if (value != nil) {
                if (value != (id)kCFNull) {
                    self->_identifier = [value integerValue];
                }
                self->_nestedDirtyProperties.NestedDirtyPropertyIdentifier = 1;
            }
        }
    if ([self class] == [Nested class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(NestedBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(NestedBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _identifier = builder.identifier;
    _nestedDirtyProperties = builder.nestedDirtyProperties;
    if ([self class] == [Nested class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
#ifdef DEBUG
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:1];
    [descriptionFields addObject:parentDebugDescription];
    struct NestedDirtyProperties props = _nestedDirtyProperties;
    if (props.NestedDirtyPropertyIdentifier) {
        [descriptionFields addObject:[NSString stringWithFormat:@"_identifier = %@", @(_identifier)]];
    }
    return [NSString stringWithFormat:@"Nested = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
#endif
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(NestedBuilder *builder))block
{
    NSParameterAssert(block);
    NestedBuilder *builder = [[NestedBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[Nested class]] == NO) {
        return NO;
    }
    return [self isEqualToNested:anObject];
}
- (BOOL)isEqualToNested:(Nested *)anObject
{
    return (
        (anObject != nil) &&
        (_identifier == anObject.identifier)
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
        (NSUInteger)_identifier
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(Nested *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(Nested *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    NestedBuilder *builder = [[NestedBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[Nested alloc] initWithBuilder:builder initType:initType];
}
- (NSDictionary *)dictionaryObjectRepresentation
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:1];
    if (_nestedDirtyProperties.NestedDirtyPropertyIdentifier) {
        [dict setObject:@(_identifier) forKey: @"id"];
    }
    return dict;
}
- (BOOL)isIdentifierSet
{
    return _nestedDirtyProperties.NestedDirtyPropertyIdentifier == 1;
}
#pragma mark - NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding
{
    return YES;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (!(self = [super init])) {
        return self;
    }
    _identifier = [aDecoder decodeIntegerForKey:@"id"];
    _nestedDirtyProperties.NestedDirtyPropertyIdentifier = [aDecoder decodeIntForKey:@"id_dirty_property"] & 0x1;
    if ([self class] == [Nested class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeInteger:self.identifier forKey:@"id"];
    [aCoder encodeInt:_nestedDirtyProperties.NestedDirtyPropertyIdentifier forKey:@"id_dirty_property"];
}
@end

@implementation NestedBuilder
- (instancetype)initWithModel:(Nested *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct NestedDirtyProperties nestedDirtyProperties = modelObject.nestedDirtyProperties;
    if (nestedDirtyProperties.NestedDirtyPropertyIdentifier) {
        _identifier = modelObject.identifier;
    }
    _nestedDirtyProperties = nestedDirtyProperties;
    return self;
}
- (Nested *)build
{
    return [[Nested alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(Nested *)modelObject
{
    NSParameterAssert(modelObject);
    NestedBuilder *builder = self;
    if (modelObject.nestedDirtyProperties.NestedDirtyPropertyIdentifier) {
        builder.identifier = modelObject.identifier;
    }
}
- (void)setIdentifier:(NSInteger)identifier
{
    _identifier = identifier;
    _nestedDirtyProperties.NestedDirtyPropertyIdentifier = 1;
}
@end
