.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 68
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-void
.end method

.method private handlePluginException(Ljava/lang/Throwable;)V
    .locals 3

    .line 223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .locals 8

    .line 149
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 151
    invoke-direct {p0, v0}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 154
    :goto_0
    :try_start_1
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 206
    :try_start_2
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 209
    :try_start_3
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 211
    invoke-direct {p0, v0}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 213
    :goto_1
    new-instance v0, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 156
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 169
    :try_start_4
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 178
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0

    :catchall_3
    move-exception v0

    .line 172
    :try_start_5
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v1

    .line 174
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 176
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Observer.onError not implemented and error while unsubscribing."

    invoke-direct {v1, p1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_0
    :try_start_6
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    .line 188
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 191
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 201
    new-instance v1, Lrx/exceptions/OnErrorFailedException;

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object p1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError"

    invoke-direct {v1, p1, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_6
    move-exception v1

    .line 194
    :try_start_8
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v5

    invoke-virtual {v5}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v5

    invoke-virtual {v5, v1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v5

    .line 196
    invoke-direct {p0, v5}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    .line 198
    :goto_4
    new-instance v5, Lrx/exceptions/OnErrorFailedException;

    new-instance v6, Lrx/exceptions/CompositeException;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Throwable;

    aput-object p1, v7, v3

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    const-string p1, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    invoke-direct {v5, p1, v6}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getActual()Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 85
    :try_start_1
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 90
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    throw v0

    :cond_0
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 108
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 109
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 111
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 135
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
