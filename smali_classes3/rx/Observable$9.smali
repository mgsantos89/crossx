.class Lrx/Observable$9;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->doOnEach(Lrx/functions/Action1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$onNotification:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .locals 0

    .line 4318
    iput-object p1, p0, Lrx/Observable$9;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$9;->val$onNotification:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .line 4321
    iget-object v0, p0, Lrx/Observable$9;->val$onNotification:Lrx/functions/Action1;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 4326
    iget-object v0, p0, Lrx/Observable$9;->val$onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4331
    iget-object v0, p0, Lrx/Observable$9;->val$onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    return-void
.end method
