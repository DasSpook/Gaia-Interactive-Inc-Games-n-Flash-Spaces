.class Ltwitter4j/AsyncTwitterImpl$26;
.super Ltwitter4j/AsyncTwitterImpl$AsyncTask;
.source "AsyncTwitterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitterImpl;->getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitterImpl;

.field private final val$paging:Ltwitter4j/Paging;

.field private final val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitterImpl;Ltwitter4j/TwitterMethod;Ljava/util/List;Ljava/lang/String;Ltwitter4j/Paging;)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;

    .prologue
    .line 525
    .local p3, "x1":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iput-object p1, p0, Ltwitter4j/AsyncTwitterImpl$26;->this$0:Ltwitter4j/AsyncTwitterImpl;

    iput-object p4, p0, Ltwitter4j/AsyncTwitterImpl$26;->val$screenName:Ljava/lang/String;

    iput-object p5, p0, Ltwitter4j/AsyncTwitterImpl$26;->val$paging:Ltwitter4j/Paging;

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
    .line 527
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/TwitterListener;>;"
    iget-object v3, p0, Ltwitter4j/AsyncTwitterImpl$26;->this$0:Ltwitter4j/AsyncTwitterImpl;

    invoke-static {v3}, Ltwitter4j/AsyncTwitterImpl;->access$000(Ltwitter4j/AsyncTwitterImpl;)Ltwitter4j/Twitter;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/AsyncTwitterImpl$26;->val$screenName:Ljava/lang/String;

    iget-object v5, p0, Ltwitter4j/AsyncTwitterImpl$26;->val$paging:Ltwitter4j/Paging;

    invoke-interface {v3, v4, v5}, Ltwitter4j/Twitter;->getRetweetedByUser(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v2

    .line 528
    .local v2, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
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

    .line 530
    .local v1, "listener":Ltwitter4j/TwitterListener;
    :try_start_0
    invoke-interface {v1, v2}, Ltwitter4j/TwitterListener;->gotRetweetedByUser(Ltwitter4j/ResponseList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v3

    goto :goto_0

    .line 534
    .end local v1    # "listener":Ltwitter4j/TwitterListener;
    :cond_0
    return-void
.end method
