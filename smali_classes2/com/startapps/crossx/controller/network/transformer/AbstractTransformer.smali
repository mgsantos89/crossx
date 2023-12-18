.class public abstract Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "AbstractTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/startapps/crossx/controller/network/listerners/IListeners;",
        ">",
        "Lcom/loopj/android/http/AsyncHttpResponseHandler;"
    }
.end annotation


# instance fields
.field protected key:Ljava/lang/String;

.field protected listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/controller/network/listerners/IListeners;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "transform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transform"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/IListeners;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V

    :goto_0
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->transform(I[Lcz/msebera/android/httpclient/Header;[B)V

    return-void
.end method

.method public transform(I[Lcz/msebera/android/httpclient/Header;[B)V
    .locals 3

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    invoke-virtual {p0, v1, p1, p2}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->transform(Lorg/json/JSONObject;I[Lcz/msebera/android/httpclient/Header;)V

    return-void

    :catch_0
    move-exception v1

    const/16 v2, 0x12c

    if-ge p1, v2, :cond_0

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    .line 59
    invoke-virtual {p0, v0, p1, p2}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->transform(Lorg/json/JSONObject;I[Lcz/msebera/android/httpclient/Header;)V

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/startapps/crossx/controller/network/listerners/IListeners;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/startapps/crossx/controller/network/listerners/IListeners;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    return-void
.end method

.method public abstract transform(Lorg/json/JSONObject;I[Lcz/msebera/android/httpclient/Header;)V
.end method
