.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->showAdvancedReboot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entries:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->val$entries:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$entries:[Ljava/lang/String;

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$3;->val$entries:[Ljava/lang/String;

    aget-object v0, v0, p2

    # setter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
