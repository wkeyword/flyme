.class final Lcom/android/internal/policy/impl/GlobalActions$RebootAction;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 2

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 520
    const v0, 0x1080382

    const v1, 0x1040042

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 536
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 538
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    .line 540
    .local v1, "locked":Z
    :goto_0
    const/4 v2, 0x0

    .line 541
    .local v2, "showAdvancedReboot":Z
    if-nez v1, :cond_0

    .line 542
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "advanced_reboot"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v2, v3

    .line 545
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v4}, Lcom/android/internal/policy/impl/GlobalActions;->access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reboot(ZZ)V

    .line 546
    return-void

    .end local v1    # "locked":Z
    .end local v2    # "showAdvancedReboot":Z
    :cond_1
    move v1, v4

    .line 538
    goto :goto_0

    .restart local v1    # "locked":Z
    .restart local v2    # "showAdvancedReboot":Z
    :cond_2
    move v2, v4

    .line 542
    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method
