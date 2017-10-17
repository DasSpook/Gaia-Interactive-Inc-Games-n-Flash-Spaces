.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangedNumericValue"
.end annotation


# instance fields
.field private lowMax:F

.field private lowMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    return v0
.end method

.method public getLowMin()F
    .locals 1

    .prologue
    .line 988
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    .prologue
    .line 1018
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;)V

    .line 1019
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1020
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1021
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1011
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->load(Ljava/io/BufferedReader;)V

    .line 1012
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string v0, "lowMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 1014
    const-string v0, "lowMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    goto :goto_0
.end method

.method public newLowValue()F
    .locals 3

    .prologue
    .line 974
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 2
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ParticleValue;->save(Ljava/io/Writer;)V

    .line 1005
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->active:Z

    if-nez v0, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lowMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLow(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 978
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 979
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 980
    return-void
.end method

.method public setLow(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 983
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 984
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 985
    return-void
.end method

.method public setLowMax(F)V
    .locals 0
    .param p1, "lowMax"    # F

    .prologue
    .line 1000
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMax:F

    .line 1001
    return-void
.end method

.method public setLowMin(F)V
    .locals 0
    .param p1, "lowMin"    # F

    .prologue
    .line 992
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->lowMin:F

    .line 993
    return-void
.end method
