.class public final enum Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;
.super Ljava/lang/Enum;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Winner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CPU:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

.field private static final synthetic ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

.field public static final enum PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    const-string v1, "PLAYER"

    invoke-direct {v0, v1, v2}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    const-string v1, "CPU"

    invoke-direct {v0, v1, v3}, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->CPU:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    .line 388
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->PLAYER:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->CPU:Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    return-object v0
.end method

.method public static values()[Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;->ENUM$VALUES:[Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    array-length v1, v0

    new-array v2, v1, [Lcom/gaiaonline/monstergalaxy/model/battle/BattleReport$Winner;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
