.class public abstract Lrx/observables/AbstractOnSubscribe;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AbstractOnSubscribe$SubscriptionState;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;,
        Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_FUNC1:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 205
    new-instance v0, Lrx/observables/AbstractOnSubscribe$1;

    invoke-direct {v0}, Lrx/observables/AbstractOnSubscribe$1;-><init>()V

    sput-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 225
    sget-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    .line 227
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;)Lrx/observables/AbstractOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 245
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;>;",
            "Lrx/functions/Func1<",
            "-",
            "Lrx/Subscriber<",
            "-TT;>;+TS;>;",
            "Lrx/functions/Action1<",
            "-TS;>;)",
            "Lrx/observables/AbstractOnSubscribe<",
            "TT;TS;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;-><init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;Lrx/observables/AbstractOnSubscribe$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/observables/AbstractOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lrx/observables/AbstractOnSubscribe;->onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    new-instance v1, Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V

    .line 191
    new-instance v0, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;

    invoke-direct {v0, v1, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 192
    new-instance v0, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;

    invoke-direct {v0, v1, v2}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    return-void
.end method

.method protected abstract next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState<",
            "TT;TS;>;)V"
        }
    .end annotation
.end method

.method protected onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)TS;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onTerminated(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    return-void
.end method

.method public final toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 201
    invoke-static {p0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
