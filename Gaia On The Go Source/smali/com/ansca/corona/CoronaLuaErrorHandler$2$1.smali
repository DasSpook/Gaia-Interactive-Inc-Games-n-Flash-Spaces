.class Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;
.super Ljava/lang/Object;
.source "CoronaLuaErrorHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaLuaErrorHandler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaLuaErrorHandler$2;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaLuaErrorHandler$2;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;->this$1:Lcom/ansca/corona/CoronaLuaErrorHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ansca/corona/CoronaLuaErrorHandler$2$1;->this$1:Lcom/ansca/corona/CoronaLuaErrorHandler$2;

    iget-object v0, v0, Lcom/ansca/corona/CoronaLuaErrorHandler$2;->val$exception:Ljava/lang/RuntimeException;

    throw v0
.end method
