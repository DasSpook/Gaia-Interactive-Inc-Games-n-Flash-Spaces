.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBounds"
.end annotation


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V
    .locals 0
    .param p1, "bounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 869
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V
    .locals 1
    .param p1, "bounds"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;

    .prologue
    .line 872
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 873
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 874
    return-void
.end method
