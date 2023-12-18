.class Lrx/Single$2;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$lift:Lrx/Observable$Operator;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observable$Operator;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 179
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/Single$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TR;>;)V"
        }
    .end annotation

    .line 183
    :try_start_0
    invoke-static {}, Lrx/Single;->access$000()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    iget-object v1, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-virtual {v0, v1}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-virtual {v0}, Lrx/Subscriber;->onStart()V

    .line 187
    iget-object v1, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iget-object v1, v1, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v1, v0}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 192
    :try_start_2
    instance-of v2, v1, Lrx/exceptions/OnErrorNotImplementedException;

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    :cond_0
    check-cast v1, Lrx/exceptions/OnErrorNotImplementedException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 198
    instance-of v1, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 199
    :cond_1
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    throw v0
.end method
