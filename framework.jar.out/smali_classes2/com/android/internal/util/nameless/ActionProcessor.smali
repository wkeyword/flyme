.class public Lcom/android/internal/util/nameless/ActionProcessor;
.super Ljava/lang/Object;
.source "ActionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/nameless/ActionProcessor$2;
    }
.end annotation


# static fields
.field private static final ACTION_SCREEN_RECORD:Ljava/lang/String; = "org.namelessrom.screencast.ACTION_SCREEN_RECORD"

.field private static final TAG:Ljava/lang/String; = "ActionProcessor"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static launchAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionString"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;->ACTION_NULL:Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;

    invoke-virtual {v0}, Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/util/nameless/ActionProcessor$1;

    invoke-direct {v1, p1, p0}, Lcom/android/internal/util/nameless/ActionProcessor$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method
