.class Lcom/ansca/corona/ViewManager$3;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->setTextViewSingleLine(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;

.field final synthetic val$id:I

.field final synthetic val$isSingleLine:Z


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;IZ)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$3;->this$0:Lcom/ansca/corona/ViewManager;

    iput p2, p0, Lcom/ansca/corona/ViewManager$3;->val$id:I

    iput-boolean p3, p0, Lcom/ansca/corona/ViewManager$3;->val$isSingleLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 326
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$3;->this$0:Lcom/ansca/corona/ViewManager;

    const-class v2, Lcom/ansca/corona/CoronaEditText;

    iget v3, p0, Lcom/ansca/corona/ViewManager$3;->val$id:I

    invoke-virtual {v1, v2, v3}, Lcom/ansca/corona/ViewManager;->getDisplayObjectById(Ljava/lang/Class;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/CoronaEditText;

    .line 327
    .local v0, "view":Lcom/ansca/corona/CoronaEditText;
    if-eqz v0, :cond_0

    .line 328
    iget-boolean v1, p0, Lcom/ansca/corona/ViewManager$3;->val$isSingleLine:Z

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaEditText;->setSingleLine(Z)V

    .line 330
    :cond_0
    return-void
.end method
