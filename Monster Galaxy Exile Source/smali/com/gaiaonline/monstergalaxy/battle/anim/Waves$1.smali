.class Lcom/gaiaonline/monstergalaxy/battle/anim/Waves$1;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;
.source "Waves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool",
        "<",
        "Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ActionResetingPool;-><init>(II)V

    .line 1
    return-void
.end method


# virtual methods
.method protected newObject()Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/battle/anim/Waves$1;->newObject()Lcom/gaiaonline/monstergalaxy/battle/anim/Waves;

    move-result-object v0

    return-object v0
.end method
