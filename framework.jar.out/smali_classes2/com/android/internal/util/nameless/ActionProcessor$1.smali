.class final Lcom/android/internal/util/nameless/ActionProcessor$1;
.super Ljava/lang/Object;
.source "ActionProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/nameless/ActionProcessor;->launchAction(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionString:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$actionString:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 53
    iget-object v6, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$actionString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/util/nameless/ActionConstants;->fromString(Ljava/lang/String;)Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;

    move-result-object v0

    .line 54
    .local v0, "action":Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;
    sget-object v6, Lcom/android/internal/util/nameless/ActionProcessor$2;->$SwitchMap$com$android$internal$util$nameless$ActionConstants$ActionConstant:[I

    invoke-virtual {v0}, Lcom/android/internal/util/nameless/ActionConstants$ActionConstant;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v6, "statusbar"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 58
    .local v2, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v4

    .line 62
    .local v4, "exc":Landroid/os/RemoteException;
    const-string v6, "ActionProcessor"

    const-string v7, "RemoteException!"

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/nameless/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 68
    .end local v2    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v4    # "exc":Landroid/os/RemoteException;
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "org.namelessrom.screencast.ACTION_SCREEN_RECORD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    .line 73
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v6, "ActionProcessor"

    const-string v7, "Could not start screen recording"

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/nameless/Logger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 79
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$actionString:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 80
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v6, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 82
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 83
    .local v3, "e":Ljava/net/URISyntaxException;
    const-string v6, "ActionProcessor"

    const-string v7, "URISyntaxException: [%s]"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$actionString:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/nameless/Logger;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v3    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v3

    .line 85
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "ActionProcessor"

    const-string v7, "ActivityNotFound: [%s]"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/util/nameless/ActionProcessor$1;->val$actionString:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/nameless/Logger;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
