.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->requestFocus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$textFieldName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;->val$textFieldName:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;->val$textFieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$4(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    .line 217
    return-void
.end method
