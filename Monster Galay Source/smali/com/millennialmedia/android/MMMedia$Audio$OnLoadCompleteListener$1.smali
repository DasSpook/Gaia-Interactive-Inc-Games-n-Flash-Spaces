.class Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;
.super Ljava/util/TimerTask;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->testSample(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 789
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v7, "completedOnes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$300(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 792
    .local v9, "sampleId":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$400(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v10

    .line 793
    .local v10, "streamId":I
    if-eqz v10, :cond_0

    .line 795
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$400(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/media/SoundPool;->stop(I)V

    .line 796
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$400(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 797
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    .end local v9    # "sampleId":Ljava/lang/Integer;
    .end local v10    # "streamId":I
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$300(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 801
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$300(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$500(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 804
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener$1;->this$1:Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;->access$500(Lcom/millennialmedia/android/MMMedia$Audio$OnLoadCompleteListener;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 806
    :cond_2
    return-void
.end method
