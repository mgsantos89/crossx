.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/realm/OrderedRealmCollectionChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/Object;Lio/realm/OrderedCollectionChangeSet;)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/RealmResults;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$2;->$r8$lambda$kUzkxXXEX2mItRPrm83WiLOTQok(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/RealmResults;Lio/realm/OrderedCollectionChangeSet;)V

    return-void
.end method
