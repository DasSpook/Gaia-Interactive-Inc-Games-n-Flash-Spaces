.class Lcom/loopj/android/http/AsyncHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$2;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
