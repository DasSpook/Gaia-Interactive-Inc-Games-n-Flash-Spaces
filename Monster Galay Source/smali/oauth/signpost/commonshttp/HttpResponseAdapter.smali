.class public Loauth/signpost/commonshttp/HttpResponseAdapter;
.super Ljava/lang/Object;
.source "HttpResponseAdapter.java"

# interfaces
.implements Loauth/signpost/http/HttpResponse;


# instance fields
.field private response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;

    .line 14
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method
