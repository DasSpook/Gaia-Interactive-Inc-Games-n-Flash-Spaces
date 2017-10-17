.class public Lcom/badlogic/gdx/physics/box2d/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field public static final COL1_X:I = 0x2

.field public static final COL1_Y:I = 0x3

.field public static final COL2_X:I = 0x4

.field public static final COL2_Y:I = 0x5

.field public static final POS_X:I = 0x0

.field public static final POS_Y:I = 0x1


# instance fields
.field private position:Lcom/badlogic/gdx/math/Vector2;

.field public vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "angle"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 45
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Transform;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->setRotation(F)V

    .line 47
    return-void
.end method


# virtual methods
.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 53
    .local v0, "x":F
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 55
    .local v1, "y":F
    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 56
    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 57
    return-object p1
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 80
    return-void
.end method

.method public setRotation(F)V
    .locals 5
    .param p1, "angle"    # F

    .prologue
    .line 68
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 69
    .local v1, "s":F
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 70
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x4

    neg-float v4, v1

    aput v4, v2, v3

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 72
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x5

    aput v0, v2, v3

    .line 73
    return-void
.end method
