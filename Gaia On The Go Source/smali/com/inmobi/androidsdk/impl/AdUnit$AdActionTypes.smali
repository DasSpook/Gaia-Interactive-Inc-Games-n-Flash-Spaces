.class public final enum Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
.super Ljava/lang/Enum;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/impl/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdActionTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AdActionType_Call:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field public static final enum AdActionType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field public static final enum AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field public static final enum AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field public static final enum AdActionType_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

.field private static final synthetic ENUM$VALUES:[Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    const-string v1, "AdActionType_None"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    new-instance v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    const-string v1, "AdActionType_Web"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    new-instance v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    const-string v1, "AdActionType_SMS"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    new-instance v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    const-string v1, "AdActionType_Search"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    new-instance v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    const-string v1, "AdActionType_Call"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Call:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_None:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Web:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_SMS:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Search:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->AdActionType_Call:Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->ENUM$VALUES:[Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;->ENUM$VALUES:[Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/impl/AdUnit$AdActionTypes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "s":Ljava/lang/String;
    const-string v1, "AdActionType_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
