.class public Ltwitter4j/MediaEntityJSONImpl;
.super Ljava/lang/Object;
.source "MediaEntityJSONImpl.java"

# interfaces
.implements Ltwitter4j/MediaEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/MediaEntityJSONImpl$Size;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x481d74dfd101ffc1L


# instance fields
.field private displayURL:Ljava/lang/String;

.field private end:I

.field private expandedURL:Ljava/net/URL;

.field private id:J

.field private mediaURL:Ljava/net/URL;

.field private mediaURLHttps:Ljava/net/URL;

.field private sizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end field

.field private start:I

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v3, p0, Ltwitter4j/MediaEntityJSONImpl;->start:I

    .line 37
    iput v3, p0, Ltwitter4j/MediaEntityJSONImpl;->end:I

    .line 47
    :try_start_0
    const-string v3, "indices"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 48
    .local v0, "indicesArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Ltwitter4j/MediaEntityJSONImpl;->start:I

    .line 49
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Ltwitter4j/MediaEntityJSONImpl;->end:I

    .line 50
    const-string v3, "id"

    invoke-static {v3, p1}, Ltwitter4j/internal/util/ParseUtil;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    new-instance v3, Ljava/net/URL;

    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :goto_0
    :try_start_2
    const-string v3, "expanded_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 59
    :try_start_3
    new-instance v3, Ljava/net/URL;

    const-string v4, "expanded_url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    :cond_0
    :goto_1
    :try_start_4
    const-string v3, "media_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 65
    :try_start_5
    new-instance v3, Ljava/net/URL;

    const-string v4, "media_url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 69
    :cond_1
    :goto_2
    :try_start_6
    const-string v3, "media_url_https"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 71
    :try_start_7
    new-instance v3, Ljava/net/URL;

    const-string v4, "media_url_https"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/net/URL;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 75
    :cond_2
    :goto_3
    :try_start_8
    const-string v3, "display_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    const-string v3, "display_url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    .line 78
    :cond_3
    const-string v3, "sizes"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    .local v2, "sizes":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    .line 80
    iget-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->LARGE:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v6, "large"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->MEDIUM:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v6, "medium"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->SMALL:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v6, "small"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v3, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    sget-object v4, Ltwitter4j/MediaEntity$Size;->THUMB:Ljava/lang/Integer;

    new-instance v5, Ltwitter4j/MediaEntityJSONImpl$Size;

    const-string v6, "thumb"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Ltwitter4j/MediaEntityJSONImpl$Size;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 88
    return-void

    .line 84
    .end local v0    # "indicesArray":Lorg/json/JSONArray;
    .end local v2    # "sizes":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "jsone":Lorg/json/JSONException;
    new-instance v3, Ltwitter4j/TwitterException;

    invoke-direct {v3, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 72
    .end local v1    # "jsone":Lorg/json/JSONException;
    .restart local v0    # "indicesArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 66
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 60
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 54
    :catch_4
    move-exception v3

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    instance-of v3, p1, Ltwitter4j/MediaEntityJSONImpl;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 211
    check-cast v0, Ltwitter4j/MediaEntityJSONImpl;

    .line 213
    .local v0, "that":Ltwitter4j/MediaEntityJSONImpl;
    iget-wide v3, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    iget-wide v5, v0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDisplayURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl;->end:I

    return v0
.end method

.method public getExpandedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/net/URL;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    return-wide v0
.end method

.method public getMediaURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/net/URL;

    return-object v0
.end method

.method public getMediaURLHttps()Ljava/net/URL;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/net/URL;

    return-object v0
.end method

.method public getSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Ltwitter4j/MediaEntityJSONImpl;->start:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 220
    iget-wide v0, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    iget-wide v2, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MediaEntityJSONImpl{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/MediaEntityJSONImpl;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/MediaEntityJSONImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->url:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURL:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", mediaURLHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->mediaURLHttps:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", expandedURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->expandedURL:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", displayURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->displayURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/MediaEntityJSONImpl;->sizes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
