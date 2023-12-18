.class public abstract Lcom/startapps/crossx/rest/callback/CancelableCallback;
.super Ljava/lang/Object;
.source "CancelableCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private pendingError:Ljava/lang/Throwable;

.field private pendingResponse:Lretrofit/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Response<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pendingT:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/startapps/crossx/rest/callback/CancelableCallback;->canceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/startapps/crossx/rest/callback/CancelableCallback;->canceled:Z

    return-void
.end method

.method protected abstract onCancel()V
.end method

.method protected abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/callback/CancelableCallback;->canceled:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;->onCancel()V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/rest/callback/CancelableCallback;->onFail(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TT;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/startapps/crossx/rest/callback/CancelableCallback;->canceled:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/startapps/crossx/rest/callback/CancelableCallback;->onCancel()V

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/rest/callback/CancelableCallback;->onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p1, p2}, Lcom/startapps/crossx/rest/error/util/ErrorUtils;->parseError(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/startapps/crossx/rest/error/ResponseError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/rest/callback/CancelableCallback;->onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V

    :goto_0
    return-void
.end method

.method protected abstract onResponseError(Lcom/startapps/crossx/rest/error/ResponseError;)V
.end method

.method protected abstract onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TT;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation
.end method
