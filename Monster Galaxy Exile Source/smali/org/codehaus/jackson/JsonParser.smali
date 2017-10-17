.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/codehaus/jackson/Versioned;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/JsonParser$Feature;,
        Lorg/codehaus/jackson/JsonParser$NumberType;
    }
.end annotation


# static fields
.field private static final MAX_BYTE_I:I = 0x7f

.field private static final MAX_SHORT_I:I = 0x7fff

.field private static final MIN_BYTE_I:I = -0x80

.field private static final MIN_SHORT_I:I = -0x8000


# instance fields
.field protected _currToken:Lorg/codehaus/jackson/JsonToken;

.field protected _features:I

.field protected _lastClearedToken:Lorg/codehaus/jackson/JsonToken;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "features"    # I

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p1, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    .line 289
    return-void
.end method


# virtual methods
.method protected _constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1291
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public canUseSchema(Lorg/codehaus/jackson/FormatSchema;)Z
    .locals 1
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public clearCurrentToken()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_lastClearedToken:Lorg/codehaus/jackson/JsonToken;

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    .line 652
    :cond_0
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonParser;
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 483
    if-eqz p2, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->enableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V

    .line 488
    :goto_0
    return-object p0

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->disableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V

    goto :goto_0
.end method

.method public disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 471
    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    .line 472
    return-object p0
.end method

.method public disableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->disable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;

    return-void
.end method

.method public enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 459
    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    .line 460
    return-object p0
.end method

.method public enableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->enable(Lorg/codehaus/jackson/JsonParser$Feature;)Lorg/codehaus/jackson/JsonParser;

    return-void
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1048
    invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getBooleanValue()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 989
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 990
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not of boolean type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 853
    .local v0, "value":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    .line 854
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 856
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method public abstract getCodec()Lorg/codehaus/jackson/ObjectCodec;
.end method

.method public abstract getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getCurrentToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1008
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public getLastClearedToken()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_lastClearedToken:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getNumberValue()Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
.end method

.method public getShortValue()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    .line 876
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_1

    .line 877
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of Java short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonParser;->_constructError(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v1

    throw v1

    .line 879
    :cond_1
    int-to-short v1, v0

    return v1
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextCharacters()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextLength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTextOffset()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public abstract getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
.end method

.method public getValueAsBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->getValueAsBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getValueAsBoolean(Z)Z
    .locals 0
    .param p1, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1190
    return p1
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1139
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/JsonParser;->getValueAsDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getValueAsDouble(D)D
    .locals 0
    .param p1, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1156
    return-wide p1
.end method

.method public getValueAsInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->getValueAsInt(I)I

    move-result v0

    return v0
.end method

.method public getValueAsInt(I)I
    .locals 0
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1088
    return p1
.end method

.method public getValueAsLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->getValueAsInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValueAsLong(J)J
    .locals 0
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 1122
    return-wide p1
.end method

.method public hasCurrentToken()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTextCharacters()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isClosed()Z
.end method

.method public isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 498
    iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpectedStartArrayToken()Z
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->isEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public abstract nextToken()Lorg/codehaus/jackson/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public nextValue()Lorg/codehaus/jackson/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 564
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 565
    .local v0, "t":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 566
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 568
    :cond_0
    return-object v0
.end method

.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1224
    .local v0, "codec":Lorg/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1225
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1252
    .local p1, "valueTypeRef":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<*>;"
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1253
    .local v0, "codec":Lorg/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1259
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/codehaus/jackson/ObjectCodec;->readValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readValueAsTree()Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCodec()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v0

    .line 1273
    .local v0, "codec":Lorg/codehaus/jackson/ObjectCodec;
    if-nez v0, :cond_0

    .line 1274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1276
    :cond_0
    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/ObjectCodec;->readTree(Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    return-object v1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, -0x1

    return v0
.end method

.method public releaseBuffered(Ljava/io/Writer;)I
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, -0x1

    return v0
.end method

.method public abstract setCodec(Lorg/codehaus/jackson/ObjectCodec;)V
.end method

.method public setFeature(Lorg/codehaus/jackson/JsonParser$Feature;Z)V
    .locals 0
    .param p1, "f"    # Lorg/codehaus/jackson/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 504
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/JsonParser;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonParser;

    return-void
.end method

.method public setSchema(Lorg/codehaus/jackson/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lorg/codehaus/jackson/FormatSchema;

    .prologue
    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parser of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support schema of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/codehaus/jackson/FormatSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract skipChildren()Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation
.end method

.method public version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lorg/codehaus/jackson/Version;->unknownVersion()Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method
