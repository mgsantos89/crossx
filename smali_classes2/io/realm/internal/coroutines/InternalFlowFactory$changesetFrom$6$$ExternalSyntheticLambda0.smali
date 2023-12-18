.class public final synthetic Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/realm/RealmObjectChangeListener;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lio/realm/internal/coroutines/InternalFlowFactory;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    return-void
.end method


# virtual methods
.method public final onChange(Lio/realm/RealmModel;Lio/realm/ObjectChangeSet;)V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6$$ExternalSyntheticLambda0;->f$1:Lio/realm/internal/coroutines/InternalFlowFactory;

    check-cast p1, Lio/realm/DynamicRealmObject;

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$6;->$r8$lambda$Tuj7GVUV-ste-QluKqO93D3_3UQ(Lkotlinx/coroutines/channels/ProducerScope;Lio/realm/internal/coroutines/InternalFlowFactory;Lio/realm/DynamicRealmObject;Lio/realm/ObjectChangeSet;)V

    return-void
.end method
