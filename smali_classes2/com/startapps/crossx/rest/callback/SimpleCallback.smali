.class public abstract Lcom/startapps/crossx/rest/callback/SimpleCallback;
.super Ljava/lang/Object;
.source "SimpleCallback.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/startapps/crossx/rest/error/util/ErrorUtils;->parseError(Ljava/lang/Throwable;)Lcom/startapps/crossx/rest/error/CrossXError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/rest/callback/SimpleCallback;->onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V

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

    .line 17
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/startapps/crossx/rest/callback/SimpleCallback;->onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/startapps/crossx/rest/error/util/ErrorUtils;->parseErrorBySimpleCallback(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/startapps/crossx/rest/error/CrossXError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/rest/callback/SimpleCallback;->onFailure(Lcom/startapps/crossx/rest/error/CrossXError;)V

    :goto_0
    return-void
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
