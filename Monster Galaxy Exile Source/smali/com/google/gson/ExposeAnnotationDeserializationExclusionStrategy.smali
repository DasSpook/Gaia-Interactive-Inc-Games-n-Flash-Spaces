.class final Lcom/google/gson/ExposeAnnotationDeserializationExclusionStrategy;
.super Ljava/lang/Object;
.source "ExposeAnnotationDeserializationExclusionStrategy.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 3
    .param p1, "f"    # Lcom/google/gson/FieldAttributes;

    .prologue
    const/4 v1, 0x1

    .line 32
    const-class v2, Lcom/google/gson/annotations/Expose;

    invoke-virtual {p1, v2}, Lcom/google/gson/FieldAttributes;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gson/annotations/Expose;

    .line 33
    .local v0, "annotation":Lcom/google/gson/annotations/Expose;
    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Lcom/google/gson/annotations/Expose;->deserialize()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
