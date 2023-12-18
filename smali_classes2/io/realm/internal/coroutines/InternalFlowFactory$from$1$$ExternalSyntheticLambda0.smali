.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/realm/RealmChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

.field public final synthetic f$2:Lio/realm/Realm;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/Realm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$2:Lio/realm/Realm;

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    iget-object v2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$$ExternalSyntheticLambda0;->f$2:Lio/realm/Realm;

    check-cast p1, Lio/realm/Realm;

    invoke-static {v0, v1, v2, p1}, Lio/realm/internal/coroutines/InternalFlowFactory$from$1;->$r8$lambda$JH1LpjkSTMKSCZRCZzFLr2jOOgE(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/Realm;Lio/realm/Realm;)V

    return-void
.end method
