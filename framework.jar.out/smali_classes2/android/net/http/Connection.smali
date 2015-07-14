.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    .line 81
    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    .line 82
    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 66
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 83
    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 106
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 108
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 111
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 112
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v0, 0x1

    .line 331
    .local v0, "empty":Z
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v3

    .line 333
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/Request;

    .line 337
    .local v1, "tReq":Landroid/net/http/Request;
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v2, v1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 338
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    .end local v1    # "tReq":Landroid/net/http/Request;
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v2, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 341
    :cond_1
    :goto_1
    monitor-exit v3

    .line 342
    return v0

    .line 340
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "proxy"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    goto :goto_0
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .locals 5
    .param p1, "req"    # Landroid/net/http/Request;
    .param p2, "errorId"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 428
    const/4 v2, 0x1

    .line 435
    .local v2, "ret":Z
    iget v3, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 436
    const/4 v2, 0x0

    .line 438
    if-gez p2, :cond_1

    .line 439
    iget-object v3, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Landroid/net/http/ErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "error":Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v3, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 448
    .end local v1    # "error":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 449
    iget-object v3, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.connection"

    invoke-interface {v3, v4}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    return v2

    .line 441
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 442
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "error":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v1    # "error":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 8
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    const-string v3, "http.connection"

    invoke-interface {p4, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 467
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v2

    .line 471
    :cond_1
    if-eqz p1, :cond_2

    .line 472
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 473
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    :cond_2
    if-eq p3, v1, :cond_0

    .line 483
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    move v2, v1

    .line 484
    goto :goto_0

    .line 487
    :cond_3
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v3}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .locals 11
    .param p1, "req"    # Landroid/net/http/Request;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 351
    .local v4, "now":J
    const/4 v1, 0x0

    .line 352
    .local v1, "error":I
    const/4 v2, 0x0

    .line 356
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v7, 0x0

    :try_start_0
    iput-object v7, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 357
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v7

    iput-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 358
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v7, :cond_0

    .line 359
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const v8, 0xea60

    invoke-virtual {v7, v8}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 360
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v8, "http.connection"

    iget-object v9, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v7, v8, v9}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    :goto_0
    if-nez v1, :cond_1

    move v6, v3

    .line 413
    :goto_1
    return v6

    .line 366
    :cond_0
    const/4 v7, 0x2

    iput v7, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 369
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, -0x2

    .line 372
    move-object v2, v0

    .line 395
    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x6

    .line 376
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    .line 377
    move-object v2, v0

    .line 395
    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 381
    .local v0, "e":Landroid/net/http/SSLConnectionClosedByUserException;
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    goto :goto_1

    .line 384
    .end local v0    # "e":Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_3
    move-exception v0

    .line 387
    .local v0, "e":Ljavax/net/ssl/SSLHandshakeException;
    iput v10, p1, Landroid/net/http/Request;->mFailCount:I

    .line 390
    const/16 v1, -0xb

    .line 391
    move-object v2, v0

    .line 395
    goto :goto_0

    .line 392
    .end local v0    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_4
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x6

    .line 394
    move-object v2, v0

    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v7, v10, :cond_2

    .line 408
    iget-object v7, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v7, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 409
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/net/http/Request;->mFailCount:I

    .line 413
    :goto_2
    if-nez v1, :cond_3

    :goto_3
    move v6, v3

    goto :goto_1

    .line 411
    :cond_2
    invoke-direct {p0, p1, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    goto :goto_2

    :cond_3
    move v3, v6

    .line 413
    goto :goto_3
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 147
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 148
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 151
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 517
    :cond_0
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .locals 14
    .param p1, "firstRequest"    # Landroid/net/http/Request;

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 158
    const/4 v8, 0x0

    .line 160
    .local v8, "req":Landroid/net/http/Request;
    const/4 v2, 0x0

    .line 161
    .local v2, "error":I
    const/4 v3, 0x0

    .line 163
    .local v3, "exception":Ljava/lang/Exception;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v6, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v5, 0x2

    .local v5, "minPipe":I
    const/4 v4, 0x3

    .line 166
    .local v4, "maxPipe":I
    const/4 v9, 0x0

    .line 168
    .local v9, "state":I
    :cond_0
    :goto_0
    if-eq v9, v10, :cond_11

    .line 175
    iget v12, p0, Landroid/net/http/Connection;->mActive:I

    sget v13, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    if-ne v12, v13, :cond_1

    .line 177
    const-wide/16 v12, 0x64

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6

    .line 179
    :goto_1
    sget v12, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v12, p0, Landroid/net/http/Connection;->mActive:I

    .line 182
    :cond_1
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v12

    if-ne v12, v4, :cond_2

    .line 185
    const/4 v9, 0x1

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    if-nez p1, :cond_3

    .line 190
    iget-object v12, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v13, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v12, v13}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v8

    .line 195
    :goto_2
    if-nez v8, :cond_4

    .line 196
    const/4 v9, 0x2

    .line 197
    goto :goto_0

    .line 192
    :cond_3
    move-object v8, p1

    .line 193
    const/4 p1, 0x0

    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {v8, p0}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 202
    iget-boolean v12, v8, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v12, :cond_5

    .line 206
    invoke-virtual {v8}, Landroid/net/http/Request;->complete()V

    goto :goto_0

    .line 210
    :cond_5
    iget-object v12, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v12

    if-nez v12, :cond_7

    .line 218
    :cond_6
    invoke-direct {p0, v8}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 219
    const/4 v9, 0x3

    .line 220
    goto :goto_0

    .line 228
    :cond_7
    iget-object v12, v8, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v13, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v12, v13}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 234
    :try_start_1
    iget-object v12, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v12}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 245
    :goto_3
    if-eqz v3, :cond_a

    .line 246
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-boolean v12, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v12, :cond_8

    .line 250
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 252
    :cond_8
    const/4 v3, 0x0

    .line 253
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v12

    if-eqz v12, :cond_9

    move v9, v10

    .line 254
    :goto_4
    const/4 v4, 0x1

    move v5, v4

    .line 255
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/apache/http/HttpException;
    move-object v3, v0

    .line 237
    const/4 v2, -0x1

    .line 244
    goto :goto_3

    .line 238
    .end local v0    # "e":Lorg/apache/http/HttpException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    move-object v3, v0

    .line 240
    const/4 v2, -0x7

    .line 244
    goto :goto_3

    .line 241
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 243
    const/4 v2, -0x7

    goto :goto_3

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    move v9, v11

    .line 253
    goto :goto_4

    .line 258
    :cond_a
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 259
    iget-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v12, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 265
    :pswitch_1
    iget-object v12, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v13, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v12, v13}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v12

    if-nez v12, :cond_b

    const/4 v1, 0x1

    .line 266
    .local v1, "empty":Z
    :goto_5
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v7

    .line 267
    .local v7, "pipeSize":I
    const/4 v12, 0x2

    if-eq v9, v12, :cond_c

    if-ge v7, v5, :cond_c

    if-nez v1, :cond_c

    iget-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-eqz v12, :cond_c

    .line 269
    const/4 v9, 0x0

    .line 270
    goto/16 :goto_0

    .end local v1    # "empty":Z
    .end local v7    # "pipeSize":I
    :cond_b
    move v1, v11

    .line 265
    goto :goto_5

    .line 271
    .restart local v1    # "empty":Z
    .restart local v7    # "pipeSize":I
    :cond_c
    if-nez v7, :cond_e

    .line 273
    if-eqz v1, :cond_d

    move v9, v10

    .line 274
    :goto_6
    goto/16 :goto_0

    :cond_d
    move v9, v11

    .line 273
    goto :goto_6

    .line 277
    :cond_e
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "req":Landroid/net/http/Request;
    check-cast v8, Landroid/net/http/Request;

    .line 282
    .restart local v8    # "req":Landroid/net/http/Request;
    :try_start_2
    iget-object v12, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v8, v12}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5

    .line 293
    :goto_7
    if-eqz v3, :cond_10

    .line 294
    invoke-direct {p0, v8, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v12

    if-eqz v12, :cond_f

    iget-boolean v12, v8, Landroid/net/http/Request;->mCancelled:Z

    if-nez v12, :cond_f

    .line 298
    invoke-virtual {v8}, Landroid/net/http/Request;->reset()V

    .line 299
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 301
    :cond_f
    const/4 v3, 0x0

    .line 302
    iput-boolean v11, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 304
    :cond_10
    iget-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v12, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 311
    iget-object v12, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v13, "http.connection"

    invoke-interface {v12, v13}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-direct {p0, v6}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    .line 313
    const/4 v4, 0x1

    move v5, v4

    .line 314
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 283
    :catch_3
    move-exception v0

    .line 284
    .local v0, "e":Lorg/apache/http/ParseException;
    move-object v3, v0

    .line 285
    const/4 v2, -0x7

    .line 292
    goto :goto_7

    .line 286
    .end local v0    # "e":Lorg/apache/http/ParseException;
    :catch_4
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    move-object v3, v0

    .line 288
    const/4 v2, -0x7

    .line 292
    goto :goto_7

    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalStateException;
    move-object v3, v0

    .line 291
    const/4 v2, -0x7

    goto :goto_7

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "empty":Z
    .end local v7    # "pipeSize":I
    :catch_6
    move-exception v12

    goto/16 :goto_1

    .line 320
    :cond_11
    return-void

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I

    .prologue
    .line 491
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 492
    return-void
.end method

.method setCanPersist(Z)V
    .locals 0
    .param p1, "canPersist"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 496
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
