.class final Lrx/internal/util/SubscriptionIndexedRingBuffer$1;
.super Ljava/lang/Object;
.source "SubscriptionIndexedRingBuffer.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/SubscriptionIndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/Subscription;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/Subscription;)Ljava/lang/Boolean;
    .locals 0

    .line 140
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 141
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Lrx/Subscription;

    invoke-virtual {p0, p1}, Lrx/internal/util/SubscriptionIndexedRingBuffer$1;->call(Lrx/Subscription;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
