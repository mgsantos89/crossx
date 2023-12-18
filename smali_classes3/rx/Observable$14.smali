.class Lrx/Observable$14;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->repeatWhen(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Observable<",
        "+",
        "Lrx/Notification<",
        "*>;>;",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$notificationHandler:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0

    .line 5949
    iput-object p1, p0, Lrx/Observable$14;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$14;->val$notificationHandler:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5949
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/Observable$14;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+",
            "Lrx/Notification<",
            "*>;>;)",
            "Lrx/Observable<",
            "*>;"
        }
    .end annotation

    .line 5952
    iget-object v0, p0, Lrx/Observable$14;->val$notificationHandler:Lrx/functions/Func1;

    new-instance v1, Lrx/Observable$14$1;

    invoke-direct {v1, p0}, Lrx/Observable$14$1;-><init>(Lrx/Observable$14;)V

    invoke-virtual {p1, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;

    return-object p1
.end method
