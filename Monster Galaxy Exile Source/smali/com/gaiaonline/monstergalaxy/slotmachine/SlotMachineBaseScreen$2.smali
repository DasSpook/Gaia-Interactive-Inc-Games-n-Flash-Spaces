.class Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$2;
.super Ljava/lang/Object;
.source "SlotMachineBaseScreen.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/screen/ScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen$2;->this$0:Lcom/gaiaonline/monstergalaxy/slotmachine/SlotMachineBaseScreen;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIEvent(Lcom/gaiaonline/monstergalaxy/screen/UIEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/gaiaonline/monstergalaxy/screen/UIEvent;

    .prologue
    .line 81
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showPreviousScreen()V

    .line 82
    return-void
.end method
