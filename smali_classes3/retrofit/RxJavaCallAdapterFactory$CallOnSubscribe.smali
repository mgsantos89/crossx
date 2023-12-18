.class final Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lretrofit/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lretrofit/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit/Call;

    return-void
.end method

.method synthetic constructor <init>(Lretrofit/Call;Lretrofit/RxJavaCallAdapterFactory$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit/Call;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lretrofit/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;->originalCall:Lretrofit/Call;

    invoke-interface {v0}, Lretrofit/Call;->clone()Lretrofit/Call;

    move-result-object v0

    .line 100
    new-instance v1, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;

    invoke-direct {v1, p0, v0}, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;-><init>(Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;Lretrofit/Call;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 106
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lretrofit/Call;->execute()Lretrofit/Response;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_1
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
