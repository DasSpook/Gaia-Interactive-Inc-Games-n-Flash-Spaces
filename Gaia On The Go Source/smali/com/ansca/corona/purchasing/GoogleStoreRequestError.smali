.class public final enum Lcom/ansca/corona/purchasing/GoogleStoreRequestError;
.super Ljava/lang/Enum;
.source "GoogleStoreRequestError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ansca/corona/purchasing/GoogleStoreRequestError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

.field public static final enum CONNECTION_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

.field public static final enum INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

.field public static final enum MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

.field public static final enum NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 13
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 16
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    const-string v1, "CONNECTION_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->CONNECTION_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 23
    new-instance v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    const-string v1, "MARKETPLACE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->NONE:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->INVALID_REQUEST:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->CONNECTION_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->MARKETPLACE_ERROR:Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ansca/corona/purchasing/GoogleStoreRequestError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    return-object v0
.end method

.method public static values()[Lcom/ansca/corona/purchasing/GoogleStoreRequestError;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->$VALUES:[Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    invoke-virtual {v0}, [Lcom/ansca/corona/purchasing/GoogleStoreRequestError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ansca/corona/purchasing/GoogleStoreRequestError;

    return-object v0
.end method
