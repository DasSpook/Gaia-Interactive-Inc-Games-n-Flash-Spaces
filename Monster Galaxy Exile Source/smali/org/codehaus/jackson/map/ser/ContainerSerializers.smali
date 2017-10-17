.class public final Lorg/codehaus/jackson/map/ser/ContainerSerializers;
.super Ljava/lang/Object;
.source "ContainerSerializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$EnumSetSerializer;,
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;,
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$IteratorSerializer;,
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;,
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;,
        Lorg/codehaus/jackson/map/ser/ContainerSerializers$AsArraySerializer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 6
    .param p0, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "staticTyping"    # Z
    .param p2, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "valueSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$CollectionSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public static enumSetSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .param p0, "enumType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$EnumSetSerializer;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$EnumSetSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public static indexedListSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 6
    .param p0, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "staticTyping"    # Z
    .param p2, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "valueSerializer":Lorg/codehaus/jackson/map/JsonSerializer;, "Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IndexedListSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public static iterableSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 1
    .param p0, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "staticTyping"    # Z
    .param p2, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IterableSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method

.method public static iteratorSerializer(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/ContainerSerializerBase;
    .locals 1
    .param p0, "elemType"    # Lorg/codehaus/jackson/type/JavaType;
    .param p1, "staticTyping"    # Z
    .param p2, "vts"    # Lorg/codehaus/jackson/map/TypeSerializer;
    .param p3, "property"    # Lorg/codehaus/jackson/map/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Z",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/ser/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IteratorSerializer;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/ContainerSerializers$IteratorSerializer;-><init>(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    return-object v0
.end method
