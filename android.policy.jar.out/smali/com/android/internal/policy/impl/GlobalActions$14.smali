.class Lcom/android/internal/policy/impl/GlobalActions$14;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x3

    .line 1321
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1322
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x1

    .line 1323
    .local v0, "inAirplaneMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_2
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$402(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1324
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1327
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$14;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1322
    .end local v0    # "inAirplaneMode":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1323
    .restart local v0    # "inAirplaneMode":Z
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method
