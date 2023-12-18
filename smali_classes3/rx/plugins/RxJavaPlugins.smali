.class public Lrx/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static final DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

.field private static final INSTANCE:Lrx/plugins/RxJavaPlugins;


# instance fields
.field private final errorHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/plugins/RxJavaErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/plugins/RxJavaObservableExecutionHook;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/plugins/RxJavaSchedulersHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lrx/plugins/RxJavaPlugins;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    .line 58
    new-instance v0, Lrx/plugins/RxJavaPlugins$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static getInstance()Lrx/plugins/RxJavaPlugins;
    .locals 1

    .line 45
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    return-object v0
.end method

.method private static getPluginImplementationViaProperty(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rxjava.plugin."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".implementation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 157
    invoke-virtual {v2, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 166
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " implementation not able to be accessed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p0

    .line 164
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " implementation not able to be instantiated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception p0

    .line 162
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " implementation class not found: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    :catch_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " implementation is not an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getErrorHandler()Lrx/plugins/RxJavaErrorHandler;
    .locals 3

    .line 71
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lrx/plugins/RxJavaErrorHandler;

    invoke-static {v0}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaErrorHandler;

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    :cond_1
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaErrorHandler;

    return-object v0
.end method

.method public getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;
    .locals 3

    .line 113
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    const-class v0, Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-static {v0}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaObservableExecutionHookDefault;->getInstance()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v0
.end method

.method public getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;
    .locals 3

    .line 184
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 186
    const-class v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-static {v0}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaSchedulersHook;

    invoke-static {v2, v1, v0}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/plugins/RxJavaSchedulersHook;

    return-object v0
.end method

.method public registerErrorHandler(Lrx/plugins/RxJavaErrorHandler;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Another strategy was already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerObservableExecutionHook(Lrx/plugins/RxJavaObservableExecutionHook;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Another strategy was already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerSchedulersHook(Lrx/plugins/RxJavaSchedulersHook;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/FetchedAppSettingsManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Another strategy was already registered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method reset()V
    .locals 3

    .line 53
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v1, v0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    iget-object v1, v0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
