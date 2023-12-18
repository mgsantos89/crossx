.class Lrx/Observable$7;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$defaultValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 3973
    iput-object p1, p0, Lrx/Observable$7;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$7;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 3973
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/Observable$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 3977
    new-instance v0, Lrx/internal/producers/SingleProducer;

    iget-object v1, p0, Lrx/Observable$7;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method
