.class final Lretrofit/ExecutorCallAdapterFactory;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;,
        Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lretrofit/ExecutorCallAdapterFactory;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 23
    iget-object p0, p0, Lretrofit/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter<",
            "Lretrofit/Call<",
            "*>;>;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lretrofit/Call;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    invoke-static {p1}, Lretrofit/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 36
    new-instance p2, Lretrofit/ExecutorCallAdapterFactory$1;

    invoke-direct {p2, p0, p1}, Lretrofit/ExecutorCallAdapterFactory$1;-><init>(Lretrofit/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
