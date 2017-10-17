.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledNumericValue"
.end annotation


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field timeline:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1024
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    .line 1025
    new-array v0, v3, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1026
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .locals 12
    .param p1, "percent"    # F

    .prologue
    .line 1085
    const/4 v0, -0x1

    .line 1086
    .local v0, "endIndex":I
    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1087
    .local v8, "timeline":[F
    array-length v2, v8

    .line 1088
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1089
    aget v7, v8, v1

    .line 1090
    .local v7, "t":F
    cmpl-float v9, v7, p1

    if-lez v9, :cond_1

    .line 1091
    move v0, v1

    .line 1095
    .end local v7    # "t":F
    :cond_0
    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    add-int/lit8 v10, v2, -0x1

    aget v9, v9, v10

    .line 1100
    :goto_1
    return v9

    .line 1088
    .restart local v7    # "t":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    .end local v7    # "t":F
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1097
    .local v3, "scaling":[F
    add-int/lit8 v4, v0, -0x1

    .line 1098
    .local v4, "startIndex":I
    aget v6, v3, v4

    .line 1099
    .local v6, "startValue":F
    aget v5, v8, v4

    .line 1100
    .local v5, "startTime":F
    aget v9, v3, v0

    sub-float/2addr v9, v6

    sub-float v10, p1, v5

    aget v11, v8, v0

    sub-float/2addr v11, v5

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v9, v6

    goto :goto_1
.end method

.method public getScaling()[F
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    .prologue
    const/4 v3, 0x0

    .line 1132
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    .line 1133
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1134
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1135
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1136
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1137
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1138
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1140
    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1118
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    .line 1119
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v1, :cond_1

    .line 1129
    :cond_0
    return-void

    .line 1120
    :cond_1
    const-string v1, "highMin"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1121
    const-string v1, "highMax"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1122
    const-string v1, "relative"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1123
    const-string v1, "scalingCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_2
    const-string v1, "timelineCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1127
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public newHighValue()F
    .locals 3

    .prologue
    .line 1031
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 3
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    .line 1105
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    return-void

    .line 1106
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highMin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "highMax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scalingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timelineCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1113
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHigh(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 1035
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1036
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1037
    return-void
.end method

.method public setHigh(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 1040
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1041
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1042
    return-void
.end method

.method public setHighMax(F)V
    .locals 0
    .param p1, "highMax"    # F

    .prologue
    .line 1057
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    .line 1058
    return-void
.end method

.method public setHighMin(F)V
    .locals 0
    .param p1, "highMin"    # F

    .prologue
    .line 1049
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    .line 1050
    return-void
.end method

.method public setRelative(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    .line 1082
    return-void
.end method

.method public setScaling([F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    .line 1066
    return-void
.end method

.method public setTimeline([F)V
    .locals 0
    .param p1, "timeline"    # [F

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    .line 1074
    return-void
.end method
