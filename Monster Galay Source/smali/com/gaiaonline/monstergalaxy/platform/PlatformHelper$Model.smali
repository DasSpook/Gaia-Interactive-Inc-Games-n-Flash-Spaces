.class public final enum Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;
.super Ljava/lang/Enum;
.source "PlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

.field public static final enum KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    const-string v1, "KINDLE_FIRE"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->KINDLE_FIRE:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    aput-object v1, v0, v2

    sput-object v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Model;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method