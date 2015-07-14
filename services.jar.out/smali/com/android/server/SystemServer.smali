.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;,
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 324
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 325
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 326
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 327
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 186
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 307
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 313
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 314
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 321
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 316
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 302
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 212
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 217
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 227
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 232
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 233
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 242
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 246
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 250
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 254
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 257
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 260
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 262
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 263
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 266
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 271
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 274
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 277
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 278
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 283
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :catch_0
    move-exception v6

    .line 286
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 343
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 345
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 355
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 359
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 362
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 365
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "cryptState":Ljava/lang/String;
    const-string v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 375
    :cond_0
    :goto_0
    const-string v1, "SystemServer"

    const-string v3, "Package Manager"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 378
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 379
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 381
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 385
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 388
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 389
    return-void

    .line 369
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 376
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 399
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 402
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 403
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 408
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1365
    const/4 v4, 0x0

    .line 1366
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1367
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    if-lez v3, :cond_0

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    .line 1370
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1373
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1374
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1376
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1378
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1379
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1380
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1389
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1382
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1383
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1386
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1387
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 119

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 416
    .local v3, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 417
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v49, 0x0

    .line 418
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    const/16 v109, 0x0

    .line 419
    .local v109, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 420
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v86, 0x0

    .line 421
    .local v86, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 422
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 423
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v88, 0x0

    .line 424
    .local v88, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 425
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v89, 0x0

    .line 426
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v100, 0x0

    .line 427
    .local v100, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v118, 0x0

    .line 428
    .local v118, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v40, 0x0

    .line 429
    .local v40, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v108, 0x0

    .line 430
    .local v108, "usb":Lcom/android/server/usb/UsbService;
    const/16 v98, 0x0

    .line 431
    .local v98, "serial":Lcom/android/server/SerialService;
    const/16 v92, 0x0

    .line 432
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v42, 0x0

    .line 433
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 434
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v103, 0x0

    .line 435
    .local v103, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v47, 0x0

    .line 436
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v38, 0x0

    .line 437
    .local v38, "audioService":Landroid/media/AudioService;
    const/16 v85, 0x0

    .line 438
    .local v85, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v95, 0x0

    .line 439
    .local v95, "profile":Lcom/android/server/ProfileManagerService;
    const/16 v65, 0x0

    .line 441
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 442
    .local v59, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 443
    .local v56, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 444
    .local v54, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 445
    .local v61, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 446
    .local v55, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 447
    .local v60, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 448
    .local v58, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 449
    .local v57, "disableNetwork":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 450
    .local v74, "isEmulator":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 453
    .local v53, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 456
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 459
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v104, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4b

    .line 461
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v104, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v66, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4c

    .line 466
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v66, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    :try_start_3
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 473
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string v4, "account"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4d

    move-object/from16 v33, v34

    .line 478
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v49

    .line 482
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 485
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v110, Lcom/android/server/VibratorService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 487
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .local v110, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string v4, "vibrator"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 489
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v48, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4e

    .line 491
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string v4, "consumer_ir"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 494
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 497
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v114

    .line 499
    .local v114, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 501
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4f

    .line 504
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v73

    invoke-static {v3, v0, v4, v5, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v118

    .line 508
    const-string v4, "window"

    move-object/from16 v0, v118

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    const-string v4, "input"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v118

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 513
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 514
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 522
    if-eqz v74, :cond_2d

    .line 523
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v109, v110

    .line 541
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    :goto_4
    const/16 v101, 0x0

    .line 542
    .local v101, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v94, 0x0

    .line 543
    .local v94, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .line 544
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v112, 0x0

    .line 545
    .local v112, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v78, 0x0

    .line 546
    .local v78, "location":Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 547
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v106, 0x0

    .line 548
    .local v106, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v80, 0x0

    .line 549
    .local v80, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v36, 0x0

    .line 550
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v82, 0x0

    .line 551
    .local v82, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v63, 0x0

    .line 552
    .local v63, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    const/16 v68, 0x0

    .line 553
    .local v68, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v105, 0x0

    .line 554
    .local v105, "themeService":Lcom/android/server/ThemeService;
    const/16 v76, 0x0

    .line 557
    .local v76, "killSwitchService":Lcom/android/server/KillSwitchService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 561
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v71, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v118

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 563
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v4, "input_method"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4a

    move-object/from16 v70, v71

    .line 569
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 579
    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 584
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 585
    if-nez v59, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 592
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v87, Lcom/android/server/MountService;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 594
    .end local v86    # "mountService":Lcom/android/server/MountService;
    .local v87, "mountService":Lcom/android/server/MountService;
    :try_start_e
    const-string v4, "mount"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_49

    move-object/from16 v86, v87

    .line 602
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v86    # "mountService":Lcom/android/server/MountService;
    :cond_1
    :goto_8
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 608
    :goto_9
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040562

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_48

    .line 615
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    .line 616
    if-nez v58, :cond_3

    .line 618
    :try_start_11
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v81, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 620
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v81, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_12
    const-string v4, "lock_settings"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_47

    move-object/from16 v80, v81

    .line 625
    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 631
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 634
    :cond_3
    if-nez v60, :cond_4

    .line 636
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v102, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v102

    move-object/from16 v1, v118

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 638
    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v102, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_14
    const-string v4, "statusbar"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_46

    move-object/from16 v101, v102

    .line 644
    .end local v102    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v58, :cond_5

    .line 646
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 654
    :cond_5
    :goto_d
    if-nez v58, :cond_6

    .line 656
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "TorchService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v4, "torch"

    new-instance v5, Lcom/android/server/TorchService;

    invoke-direct {v5, v3}, Lcom/android/server/TorchService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 663
    :cond_6
    :goto_e
    if-nez v57, :cond_7

    .line 665
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 667
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 673
    :cond_7
    :goto_f
    if-nez v58, :cond_8

    .line 675
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v107, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 677
    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v107, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_19
    const-string v4, "textservices"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_45

    move-object/from16 v106, v107

    .line 683
    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_8
    :goto_10
    if-nez v57, :cond_33

    .line 685
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v90, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 687
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1b
    const-string v4, "network_score"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_44

    move-object/from16 v89, v90

    .line 693
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v91, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v91

    move-object/from16 v1, v35

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 695
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v91, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v4, "netstats"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_43

    move-object/from16 v6, v91

    .line 701
    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 706
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_42

    .line 711
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 723
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 726
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_21
    const-string v4, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 727
    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 728
    move-object/from16 v0, v46

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_41

    move-object/from16 v45, v46

    .line 734
    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v100

    .line 736
    const-string v4, "servicediscovery"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 742
    :goto_15
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "DPM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v3}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 749
    :goto_16
    if-nez v58, :cond_a

    .line 751
    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 764
    :cond_a
    :goto_17
    if-eqz v86, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_b

    .line 765
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 769
    :cond_b
    if-eqz v33, :cond_c

    .line 770
    :try_start_25
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_15

    .line 776
    :cond_c
    :goto_18
    if-eqz v49, :cond_d

    .line 777
    :try_start_26
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_16

    .line 782
    :cond_d
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 783
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v94

    .line 785
    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 789
    if-nez v55, :cond_e

    .line 791
    :try_start_27
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v79, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_17

    .line 793
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .local v79, "location":Lcom/android/server/LocationManagerService;
    :try_start_28
    const-string v4, "location"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_40

    move-object/from16 v78, v79

    .line 799
    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    .line 801
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2a
    const-string v4, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3f

    move-object/from16 v50, v51

    .line 807
    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1b
    if-nez v58, :cond_f

    .line 809
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 818
    :cond_f
    :goto_1c
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a

    .line 825
    :goto_1d
    if-nez v58, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 828
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v113, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b

    .line 830
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v113, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2e
    const-string v4, "wallpaper"

    move-object/from16 v0, v113

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_3e

    move-object/from16 v112, v113

    .line 836
    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1e
    if-nez v58, :cond_11

    .line 838
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Profile Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v96, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v3}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 840
    .end local v95    # "profile":Lcom/android/server/ProfileManagerService;
    .local v96, "profile":Lcom/android/server/ProfileManagerService;
    :try_start_30
    const-string v4, "profile"

    move-object/from16 v0, v96

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_3d

    move-object/from16 v95, v96

    .line 846
    .end local v96    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v95    # "profile":Lcom/android/server/ProfileManagerService;
    :cond_11
    :goto_1f
    if-nez v56, :cond_12

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 848
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v39, Landroid/media/AudioService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1d

    .line 850
    .end local v38    # "audioService":Landroid/media/AudioService;
    .local v39, "audioService":Landroid/media/AudioService;
    :try_start_32
    const-string v4, "audio"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_3c

    move-object/from16 v38, v39

    .line 856
    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_20
    if-nez v58, :cond_13

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    :cond_13
    if-nez v56, :cond_14

    .line 862
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 871
    :cond_14
    :goto_21
    if-nez v58, :cond_17

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 876
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 880
    :cond_16
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v99, Lcom/android/server/SerialService;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 883
    .end local v98    # "serial":Lcom/android/server/SerialService;
    .local v99, "serial":Lcom/android/server/SerialService;
    :try_start_35
    const-string v4, "serial"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_3b

    move-object/from16 v98, v99

    .line 889
    .end local v99    # "serial":Lcom/android/server/SerialService;
    .restart local v98    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    if-nez v58, :cond_1a

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 904
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 910
    :cond_1a
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 921
    :goto_23
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .line 928
    :goto_24
    if-nez v57, :cond_1b

    .line 930
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    new-instance v93, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v92, v93

    .line 937
    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_25
    if-nez v56, :cond_1c

    .line 939
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance v43, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_23

    .line 941
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string v4, "commontime_management"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3a

    move-object/from16 v42, v43

    .line 947
    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_26
    if-nez v57, :cond_1d

    .line 949
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 956
    :cond_1d
    :goto_27
    if-nez v58, :cond_1e

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 961
    :cond_1e
    if-nez v58, :cond_1f

    if-nez v53, :cond_1f

    .line 963
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 965
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3d
    const-string v4, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_39

    move-object/from16 v36, v37

    .line 971
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_28
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 974
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-instance v69, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v69

    move-object/from16 v1, v72

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_26

    .line 976
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v69, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_3f
    const-string v4, "gesture"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_38

    move-object/from16 v68, v69

    .line 982
    .end local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_20
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 986
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 999
    :cond_23
    :try_start_40
    const-string v4, "SystemServer"

    const-string v5, "KillSwitch Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v77, Lcom/android/server/KillSwitchService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/KillSwitchService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 1001
    .end local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .local v77, "killSwitchService":Lcom/android/server/KillSwitchService;
    :try_start_41
    const-string v4, "killswitch"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_37

    move-object/from16 v76, v77

    .line 1006
    .end local v77    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    :goto_2a
    if-nez v58, :cond_24

    .line 1008
    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v83, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v83

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 1010
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v83, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_43
    const-string v4, "media_router"

    move-object/from16 v0, v83

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_36

    move-object/from16 v82, v83

    .line 1015
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1020
    :try_start_44
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 1028
    :cond_24
    :goto_2c
    if-nez v58, :cond_25

    .line 1030
    :try_start_45
    const-string v4, "SystemServer"

    const-string v5, "CmHardwareService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const-string v4, "cmhw"

    new-instance v5, Lcom/android/server/CmHardwareService;

    invoke-direct {v5, v3}, Lcom/android/server/CmHardwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2a

    .line 1037
    :cond_25
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1039
    const-string v4, "ro.bluetooth.wipower"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v75

    .line 1041
    .local v75, "isWipowerEnabled":Z
    if-eqz v75, :cond_31

    .line 1043
    :try_start_46
    const-string v32, "wbc_service"

    .line 1044
    .local v32, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "WipowerBatteryControl Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v116, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v116

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1049
    .local v116, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v116

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v115

    .line 1050
    .local v115, "wbcClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v115

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .line 1051
    .local v52, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v117

    .line 1052
    .local v117, "wbcObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded WbcService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v4, "wbc_service"

    check-cast v117, Landroid/os/IBinder;

    .end local v117    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    .line 1062
    .end local v32    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v115    # "wbcClass":Ljava/lang/Class;
    .end local v116    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2e
    :try_start_47
    const-string v4, "SystemServer"

    const-string v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v64, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v64

    move-object/from16 v1, v72

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 1064
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v64, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_48
    const-string v4, "edgegestureservice"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_35

    move-object/from16 v63, v64

    .line 1070
    .end local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v75    # "isWipowerEnabled":Z
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :goto_2f
    if-nez v58, :cond_26

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1075
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    const-string v8, "service.adb.tcp.port"

    const-string v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1079
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_port"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    new-instance v9, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1085
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v97

    .line 1086
    .local v97, "safeMode":Z
    if-eqz v97, :cond_32

    .line 1087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1089
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1096
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v85

    .end local v85    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v85, Lcom/android/server/MmsServiceBroker;

    .line 1101
    .restart local v85    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v118

    move-object/from16 v5, v112

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_49
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2d

    .line 1106
    :goto_31
    if-eqz v80, :cond_27

    .line 1108
    :try_start_4a
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 1115
    :cond_27
    :goto_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1120
    :try_start_4b
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2f

    .line 1125
    :goto_33
    if-eqz v97, :cond_28

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1132
    :cond_28
    invoke-virtual/range {v118 .. v118}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 1133
    .local v44, "config":Landroid/content/res/Configuration;
    new-instance v84, Landroid/util/DisplayMetrics;

    invoke-direct/range {v84 .. v84}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1134
    .local v84, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/view/WindowManager;

    .line 1135
    .local v111, "w":Landroid/view/WindowManager;
    invoke-interface/range {v111 .. v111}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1136
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v44

    move-object/from16 v1, v84

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1140
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_30

    .line 1146
    :goto_34
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_31

    .line 1153
    :goto_35
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v97

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_32

    .line 1158
    :goto_36
    if-eqz v63, :cond_29

    .line 1160
    :try_start_4f
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_33

    .line 1166
    :cond_29
    :goto_37
    if-eqz v68, :cond_2a

    .line 1168
    :try_start_50
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_34

    .line 1174
    :cond_2a
    :goto_38
    new-instance v67, Landroid/content/IntentFilter;

    invoke-direct/range {v67 .. v67}, Landroid/content/IntentFilter;-><init>()V

    .line 1175
    .local v67, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.tmobile.intent.action.APP_FAILURE"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    const-string v4, "com.tmobile.intent.action.APP_FAILURE_RESET"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1177
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1178
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1179
    const-string v4, "org.cyanogenmod.intent.action.THEME_CHANGED"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1180
    const-string v4, "com.tmobile.intent.category.THEME_PACKAGE_INSTALL_STATE_CHANGE"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1181
    const-string v4, "package"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1182
    new-instance v4, Lcom/android/server/AppsFailureReceiver;

    invoke-direct {v4}, Lcom/android/server/AppsFailureReceiver;-><init>()V

    move-object/from16 v0, v67

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1185
    move-object/from16 v11, v86

    .line 1186
    .local v11, "mountServiceF":Lcom/android/server/MountService;
    move-object v13, v7

    .line 1187
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1188
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1189
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v45

    .line 1190
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v89

    .line 1191
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v112

    .line 1192
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v70

    .line 1193
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v78

    .line 1194
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v50

    .line 1195
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v92

    .line 1196
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v42

    .line 1197
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v106

    .line 1198
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v101

    .line 1199
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v36

    .line 1200
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v72

    .line 1201
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v103

    .line 1202
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v82

    .line 1203
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v38

    .line 1204
    .local v17, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v30, v85

    .line 1205
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v31, v105

    .line 1212
    .local v31, "themeServiceF":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v31}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/ThemeService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1353
    return-void

    .line 474
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Landroid/media/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v31    # "themeServiceF":Ljava/lang/Object;
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v67    # "filter":Landroid/content/IntentFilter;
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v97    # "safeMode":Z
    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v105    # "themeService":Lcom/android/server/ThemeService;
    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v111    # "w":Landroid/view/WindowManager;
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v62

    .line 475
    .local v62, "e":Ljava/lang/Throwable;
    :goto_39
    :try_start_51
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_1

    goto/16 :goto_0

    .line 536
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .line 537
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v62, "e":Ljava/lang/RuntimeException;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_3a
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 479
    .end local v62    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 505
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 524
    :cond_2d
    :try_start_52
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 525
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 536
    :catch_2
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v109, v110

    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3a

    .line 526
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 528
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 529
    :cond_2f
    if-eqz v54, :cond_30

    .line 530
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 532
    :cond_30
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v41, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_2

    .line 534
    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_53
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_50

    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_3

    .line 564
    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "themeService":Lcom/android/server/ThemeService;
    .restart local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v62

    .line 565
    .local v62, "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 572
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v62

    .line 573
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 580
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v62

    .line 581
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 595
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v62

    .line 596
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 603
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v62

    .line 604
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 621
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v62

    .line 622
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 639
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v62

    .line 640
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 649
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v62

    .line 650
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 658
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v62

    .line 659
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Torch Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 668
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v62

    .line 669
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 678
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v62

    .line 679
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 688
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v62

    .line 689
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 696
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v62

    .line 697
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 707
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v62

    move-object/from16 v2, v88

    .line 708
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 729
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v62

    .line 730
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 738
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v62

    .line 739
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 744
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v62

    .line 745
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 754
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v62

    .line 755
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 771
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v62

    .line 772
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 778
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v62

    .line 779
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 794
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v62

    .line 795
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 802
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v62

    .line 803
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 812
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v62

    .line 813
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 821
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v62

    .line 822
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 831
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v62

    .line 832
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 841
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v62

    .line 842
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "Failure starting Profile Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 851
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v62

    .line 852
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 866
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v62

    .line 867
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 884
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v62

    .line 885
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 912
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v62

    .line 913
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 924
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v62

    .line 925
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 932
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v62

    .line 933
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 942
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v62

    .line 943
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 951
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v62

    .line 952
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 966
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v62

    .line 967
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 977
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v62

    .line 978
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    .line 1002
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v62

    .line 1003
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "starting KillSwitch Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1011
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v62

    .line 1012
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1022
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v62

    .line 1023
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1032
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v62

    .line 1033
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CMHW Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1054
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v75    # "isWipowerEnabled":Z
    :catch_2b
    move-exception v62

    .line 1055
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1058
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_31
    const-string v4, "SystemServer"

    const-string v5, "Wipower not supported"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1065
    :catch_2c
    move-exception v62

    .line 1066
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "SystemServer"

    const-string v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 1092
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v75    # "isWipowerEnabled":Z
    .restart local v97    # "safeMode":Z
    :cond_32
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_30

    .line 1102
    :catch_2d
    move-exception v62

    .line 1103
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1109
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v62

    .line 1110
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1121
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v62

    .line 1122
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1141
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v44    # "config":Landroid/content/res/Configuration;
    .restart local v84    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v111    # "w":Landroid/view/WindowManager;
    :catch_30
    move-exception v62

    .line 1142
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1147
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v62

    .line 1148
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1154
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v62

    .line 1155
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1161
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v62

    .line 1162
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1169
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v62

    .line 1170
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1065
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v84    # "metrics":Landroid/util/DisplayMetrics;
    .end local v97    # "safeMode":Z
    .end local v111    # "w":Landroid/view/WindowManager;
    .restart local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v75    # "isWipowerEnabled":Z
    :catch_35
    move-exception v62

    move-object/from16 v63, v64

    .end local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto :goto_4f

    .line 1011
    .end local v75    # "isWipowerEnabled":Z
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_36
    move-exception v62

    move-object/from16 v82, v83

    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_4e

    .line 1002
    .end local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v77    # "killSwitchService":Lcom/android/server/KillSwitchService;
    :catch_37
    move-exception v62

    move-object/from16 v76, v77

    .end local v77    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    goto/16 :goto_4d

    .line 977
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_38
    move-exception v62

    move-object/from16 v68, v69

    .end local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_4c

    .line 966
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_39
    move-exception v62

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_4b

    .line 942
    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3a
    move-exception v62

    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_4a

    .line 884
    .end local v98    # "serial":Lcom/android/server/SerialService;
    .restart local v99    # "serial":Lcom/android/server/SerialService;
    :catch_3b
    move-exception v62

    move-object/from16 v98, v99

    .end local v99    # "serial":Lcom/android/server/SerialService;
    .restart local v98    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_49

    .line 851
    .end local v38    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :catch_3c
    move-exception v62

    move-object/from16 v38, v39

    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_48

    .line 841
    .end local v95    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v96    # "profile":Lcom/android/server/ProfileManagerService;
    :catch_3d
    move-exception v62

    move-object/from16 v95, v96

    .end local v96    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v95    # "profile":Lcom/android/server/ProfileManagerService;
    goto/16 :goto_47

    .line 831
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3e
    move-exception v62

    move-object/from16 v112, v113

    .end local v113    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_46

    .line 802
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_3f
    move-exception v62

    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_45

    .line 794
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    :catch_40
    move-exception v62

    move-object/from16 v78, v79

    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_44

    .line 729
    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v62

    move-object/from16 v45, v46

    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_43

    .line 707
    :catch_42
    move-exception v62

    goto/16 :goto_42

    .line 696
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_43
    move-exception v62

    move-object/from16 v6, v91

    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_41

    .line 688
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_44
    move-exception v62

    move-object/from16 v89, v90

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_40

    .line 678
    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_45
    move-exception v62

    move-object/from16 v106, v107

    .end local v107    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3f

    .line 639
    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v102    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_46
    move-exception v62

    move-object/from16 v101, v102

    .end local v102    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3e

    .line 621
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_47
    move-exception v62

    move-object/from16 v80, v81

    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_3d

    .line 612
    :catch_48
    move-exception v4

    goto/16 :goto_a

    .line 595
    .end local v86    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    :catch_49
    move-exception v62

    move-object/from16 v86, v87

    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v86    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_3c

    .line 564
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_4a
    move-exception v62

    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3b

    .line 536
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .end local v78    # "location":Lcom/android/server/LocationManagerService;
    .end local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v105    # "themeService":Lcom/android/server/ThemeService;
    .end local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4b
    move-exception v62

    goto/16 :goto_3a

    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4c
    move-exception v62

    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3a

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4d
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3a

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4e
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v109, v110

    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3a

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4f
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v109, v110

    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3a

    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v109    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "watchdog":Lcom/android/server/Watchdog;
    :catch_50
    move-exception v62

    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v103, v104

    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v109, v110

    .end local v110    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v109    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3a

    .line 474
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v114    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_51
    move-exception v62

    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_39

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v104    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "killSwitchService":Lcom/android/server/KillSwitchService;
    .restart local v78    # "location":Lcom/android/server/LocationManagerService;
    .restart local v80    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v82    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v101    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v105    # "themeService":Lcom/android/server/ThemeService;
    .restart local v106    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v112    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_33
    move-object/from16 v2, v88

    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_34
    move-object/from16 v2, v88

    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2f
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1357
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1360
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1361
    return-void
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
