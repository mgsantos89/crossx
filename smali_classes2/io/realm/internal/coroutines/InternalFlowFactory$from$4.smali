.class final Lio/realm/internal/coroutines/InternalFlowFactory$from$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory;->from(Lio/realm/DynamicRealm;Lio/realm/RealmResults;)Lkotlinx/coroutines/flow/Flow;
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
        "-",
        "Lio/realm/RealmResults<",
        "TT;>;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lio/realm/RealmResults;"
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
    c = "io.realm.internal.coroutines.InternalFlowFactory$from$4"
    f = "InternalFlowFactory.kt"
    i = {}
    l = {
        0xd8,
        0xf2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $config:Lio/realm/RealmConfiguration;

.field final synthetic $results:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public static synthetic $r8$lambda$ozC-Cv0PV3WwfP7U6jQLd6TcYOo(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;)V

    return-void
.end method

.method constructor <init>(Lio/realm/RealmResults;Lio/realm/RealmConfiguration;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults<",
            "TT;>;",
            "Lio/realm/RealmConfiguration;",
            "Lio/realm/internal/coroutines/InternalFlowFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/realm/internal/coroutines/InternalFlowFactory$from$4;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$config:Lio/realm/RealmConfiguration;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;)V
    .locals 1

    .line 224
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {p1}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p2}, Lio/realm/RealmResults;->freeze()Lio/realm/RealmResults;

    move-result-object p1

    const-string p2, "listenerResults.freeze()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$config:Lio/realm/RealmConfiguration;

    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;-><init>(Lio/realm/RealmResults;Lio/realm/RealmConfiguration;Lio/realm/internal/coroutines/InternalFlowFactory;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lio/realm/RealmResults<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 213
    iget v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 215
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    invoke-virtual {v1}, Lio/realm/RealmResults;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    sget-object v1, Lio/realm/internal/coroutines/InternalFlowFactory$from$4$1;->INSTANCE:Lio/realm/internal/coroutines/InternalFlowFactory$from$4$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 218
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 222
    :cond_4
    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$config:Lio/realm/RealmConfiguration;

    invoke-static {v1}, Lio/realm/DynamicRealm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/DynamicRealm;

    move-result-object v1

    .line 223
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    new-instance v4, Lio/realm/internal/coroutines/InternalFlowFactory$from$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v3}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;)V

    .line 233
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    invoke-virtual {v3, v4}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    .line 236
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->this$0:Lio/realm/internal/coroutines/InternalFlowFactory;

    invoke-static {v3}, Lio/realm/internal/coroutines/InternalFlowFactory;->access$getReturnFrozenObjects$p(Lio/realm/internal/coroutines/InternalFlowFactory;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    invoke-virtual {v3}, Lio/realm/RealmResults;->freeze()Lio/realm/RealmResults;

    move-result-object v3

    const-string v5, "results.freeze()"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    :cond_5
    iget-object v3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_1
    new-instance v3, Lio/realm/internal/coroutines/InternalFlowFactory$from$4$2;

    iget-object v5, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->$results:Lio/realm/RealmResults;

    invoke-direct {v3, v1, v5, v4}, Lio/realm/internal/coroutines/InternalFlowFactory$from$4$2;-><init>(Lio/realm/DynamicRealm;Lio/realm/RealmResults;Lio/realm/RealmChangeListener;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$4;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 249
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method