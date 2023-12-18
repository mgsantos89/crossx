.class final Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/ExecutorCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallback"
.end annotation

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
.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final delegate:Lretrofit/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Callback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lretrofit/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 80
    iput-object p2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->delegate:Lretrofit/Callback;

    return-void
.end method

.method static synthetic access$100(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;)Lretrofit/Callback;
    .locals 0

    .line 74
    iget-object p0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->delegate:Lretrofit/Callback;

    return-object p0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;

    invoke-direct {v1, p0, p1}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;-><init>(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TT;>;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;-><init>(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;Lretrofit/Response;Lretrofit/Retrofit;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
