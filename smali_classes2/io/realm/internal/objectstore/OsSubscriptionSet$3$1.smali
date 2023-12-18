.class Lio/realm/internal/objectstore/OsSubscriptionSet$3$1;
.super Ljava/lang/Object;
.source "OsSubscriptionSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/objectstore/OsSubscriptionSet$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$3;

.field final synthetic val$updatedSubscriptions:Lio/realm/mongodb/sync/SubscriptionSet;


# direct methods
.method constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet$3;Lio/realm/mongodb/sync/SubscriptionSet;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$3$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$3;

    iput-object p2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$3$1;->val$updatedSubscriptions:Lio/realm/mongodb/sync/SubscriptionSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$3$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$3;

    iget-object v0, v0, Lio/realm/internal/objectstore/OsSubscriptionSet$3;->val$callback:Lio/realm/mongodb/sync/SubscriptionSet$UpdateAsyncCallback;

    iget-object v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$3$1;->val$updatedSubscriptions:Lio/realm/mongodb/sync/SubscriptionSet;

    invoke-interface {v0, v1}, Lio/realm/mongodb/sync/SubscriptionSet$UpdateAsyncCallback;->onSuccess(Lio/realm/mongodb/sync/SubscriptionSet;)V

    return-void
.end method
