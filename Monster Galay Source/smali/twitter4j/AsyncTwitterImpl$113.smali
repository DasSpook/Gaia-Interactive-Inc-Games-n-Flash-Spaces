.class Ltwitter4j/AsyncTwitterImpl$113;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->updateProfileBackgroundImage(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$image:Ljava/io/File;

.field private final val$tile:Z


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/io/File;Z)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;

    .prologue
    .line 2117
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$113;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$113;->val$image:Ljava/io/File;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitterImpl$113;->val$tile:Z

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitterImpl$AsyncTask;-><init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/TwitterListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 2120
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$113;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$113;->val$image:Ljava/io/File;

    iget-boolean v5, p0, Ltwitter4j/AsyncTwitterImpl$113;->val$tile:Z

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->updateProfileBackgroundImage(Ljava/io/File;Z)Ltwitter4j/User;

    move-result-object v2

    .line 2121
    .local v2, "user":Ltwitter4j/User;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/TwitterListener;

    .line 2123
    .local v1, "listener":Ltwitter4j/TwitterListener;
    :try_start_0
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->updatedProfileBackgroundImage(Ltwitter4j/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2124
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2127
    .end local v1    # "listener":Ltwitter4j/TwitterListener;
    :cond_0
    return-void
.end method
