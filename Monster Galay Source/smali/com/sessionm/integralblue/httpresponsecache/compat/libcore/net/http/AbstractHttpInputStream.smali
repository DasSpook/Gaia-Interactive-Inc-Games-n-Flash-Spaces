.class abstract Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;
.super Ljava/io/InputStream;
.source "ProGuard"


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field protected closed:Z

.field protected final httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

.field protected final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;Ljava/net/CacheRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->in:Ljava/io/InputStream;

    .line 46
    iput-object p2, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    .line 48
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 51
    :goto_0
    if-nez v1, :cond_0

    move-object p3, v0

    .line 55
    :cond_0
    iput-object v1, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    .line 56
    iput-object p3, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    .line 57
    return-void

    :cond_1
    move-object v1, v0

    .line 48
    goto :goto_0
.end method


# virtual methods
.method protected final cacheWrite([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    :cond_0
    return-void
.end method

.method protected final checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method protected final endOfInput(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    invoke-virtual {v0, p1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 88
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/io/Streams;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method protected final unexpectedEndOfInput()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/AbstractHttpInputStream;->httpEngine:Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sessionm/integralblue/httpresponsecache/compat/libcore/net/http/HttpEngine;->release(Z)V

    .line 107
    return-void
.end method
