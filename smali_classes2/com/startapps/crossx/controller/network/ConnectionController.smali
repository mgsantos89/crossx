.class public Lcom/startapps/crossx/controller/network/ConnectionController;
.super Ljava/lang/Object;
.source "ConnectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/network/ConnectionController$SecureSocketFactory;
    }
.end annotation


# static fields
.field protected static INSTANCE:Lcom/startapps/crossx/controller/network/ConnectionController; = null

.field private static final STORE_ALIAS:Ljava/lang/String; = "rootca"

.field private static final STORE_PASS:Ljava/lang/String; = "Fineswap"

.field protected static TIME_OUT:I = 0x7530


# instance fields
.field protected client:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    .line 56
    sget v1, Lcom/startapps/crossx/controller/network/ConnectionController;->TIME_OUT:I

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/startapps/crossx/controller/network/ConnectionController;
    .locals 1

    .line 81
    sget-object v0, Lcom/startapps/crossx/controller/network/ConnectionController;->INSTANCE:Lcom/startapps/crossx/controller/network/ConnectionController;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/startapps/crossx/controller/network/ConnectionController;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/network/ConnectionController;-><init>()V

    sput-object v0, Lcom/startapps/crossx/controller/network/ConnectionController;->INSTANCE:Lcom/startapps/crossx/controller/network/ConnectionController;

    .line 84
    :cond_0
    sget-object v0, Lcom/startapps/crossx/controller/network/ConnectionController;->INSTANCE:Lcom/startapps/crossx/controller/network/ConnectionController;

    return-object v0
.end method


# virtual methods
.method public addHeaderClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;Landroid/content/Context;)V
    .locals 6

    .line 122
    :try_start_0
    new-instance v3, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "application/json"

    move-object v1, p4

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;Landroid/content/Context;)V
    .locals 6

    .line 93
    :try_start_0
    new-instance v3, Lcz/msebera/android/httpclient/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcz/msebera/android/httpclient/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/ConnectionController;->client:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v4, "application/json"

    move-object v1, p4

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcz/msebera/android/httpclient/HttpEntity;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method
