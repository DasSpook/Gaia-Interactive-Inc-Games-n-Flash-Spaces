.class public Lorg/codehaus/jackson/jaxrs/JsonMappingExceptionMapper;
.super Ljava/lang/Object;
.source "JsonMappingExceptionMapper.java"

# interfaces
.implements Ljavax/ws/rs/ext/ExceptionMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/ws/rs/ext/ExceptionMapper",
        "<",
        "Lorg/codehaus/jackson/map/JsonMappingException;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/ws/rs/ext/Provider;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toResponse(Ljava/lang/Throwable;)Ljavax/ws/rs/core/Response;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 13
    check-cast p1, Lorg/codehaus/jackson/map/JsonMappingException;

    .end local p1    # "x0":Ljava/lang/Throwable;
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/jaxrs/JsonMappingExceptionMapper;->toResponse(Lorg/codehaus/jackson/map/JsonMappingException;)Ljavax/ws/rs/core/Response;

    move-result-object v0

    return-object v0
.end method

.method public toResponse(Lorg/codehaus/jackson/map/JsonMappingException;)Ljavax/ws/rs/core/Response;
    .locals 2
    .param p1, "exception"    # Lorg/codehaus/jackson/map/JsonMappingException;

    .prologue
    .line 18
    sget-object v0, Ljavax/ws/rs/core/Response$Status;->BAD_REQUEST:Ljavax/ws/rs/core/Response$Status;

    invoke-static {v0}, Ljavax/ws/rs/core/Response;->status(Ljavax/ws/rs/core/Response$Status;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->entity(Ljava/lang/Object;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljavax/ws/rs/core/Response$ResponseBuilder;->type(Ljava/lang/String;)Ljavax/ws/rs/core/Response$ResponseBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/ws/rs/core/Response$ResponseBuilder;->build()Ljavax/ws/rs/core/Response;

    move-result-object v0

    return-object v0
.end method
