.class final Lio/realm/internal/coroutines/InternalFlowFactory$from$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory;->from(Lio/realm/Realm;Lio/realm/RealmModel;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lio/realm/RealmModel;",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.realm.internal.coroutines.InternalFlowFactory$from$7"
    f = "InternalFlowFactory.kt"
    i = {}
    l = {
        0x205,
        0x221
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lio/realm/RealmConfiguration;

.field final synthetic $realm:Lio/realm/Realm;

.field final synthetic $realmObject:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public static synthetic $r8$lambda$XFoTSpTEZhDIZeA7qDK98ftgXB8(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmModel;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmModel;)V

    return-void
.end method

.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmConfiguration;",
            "TT;",
            "Lio/realm/internal/coroutines/InternalFlowFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/realm/internal/coroutines/InternalFlowFactory$from$7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realm:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$config:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    iput-object p4, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmModel;)V
    .locals 1

    .line 525
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    invoke-static {p1}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 527
    invoke-static {p2}, Lio/realm/RealmObject;->freeze(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type T of io.realm.internal.coroutines.InternalFlowFactory.from.<no name provided>.invokeSuspend$lambda-0"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 529
    :cond_1
    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realm:Lio/realm/Realm;

    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$config:Lio/realm/RealmConfiguration;

    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    iget-object v4, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;-><init>(Lio/realm/Realm;Lio/realm/RealmConfiguration;Lio/realm/RealmModel;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 514
    iget v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 552
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 516
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realm:Lio/realm/Realm;

    invoke-virtual {v1}, Lio/realm/Realm;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    sget-object v1, Lio/realm/internal/coroutines/InternalFlowFactory$from$7$1;->INSTANCE:Lio/realm/internal/coroutines/InternalFlowFactory$from$7$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 519
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 523
    :cond_4
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$config:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v1

    .line 524
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    new-instance v4, Lio/realm/internal/coroutines/InternalFlowFactory$from$7$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v3}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;)V

    .line 534
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    invoke-static {v3, v4}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 537
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    invoke-static {v3}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-static {v3}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    invoke-static {v3}, Lio/realm/RealmObject;->freeze(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v3

    const-string v5, "freeze(realmObject)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    :cond_5
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_6
    :goto_1
    new-instance v3, Lio/realm/internal/coroutines/InternalFlowFactory$from$7$2;

    iget-object v5, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->$realmObject:Lio/realm/RealmModel;

    invoke-direct {v3, v1, v5, v4}, Lio/realm/internal/coroutines/InternalFlowFactory$from$7$2;-><init>(Lio/realm/Realm;Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$7;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 552
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
