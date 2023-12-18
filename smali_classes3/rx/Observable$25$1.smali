.class Lrx/Observable$25$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable$25;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Notification<",
        "*>;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Observable$25;


# direct methods
.method constructor <init>(Lrx/Observable$25;)V
    .locals 0

    .line 6703
    iput-object p1, p0, Lrx/Observable$25$1;->this$1:Lrx/Observable$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6703
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/Observable$25$1;->call(Lrx/Notification;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Notification;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 6706
    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method
