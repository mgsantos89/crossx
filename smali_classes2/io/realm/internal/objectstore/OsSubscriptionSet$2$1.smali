.class Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;
.super Ljava/lang/Object;
.source "OsSubscriptionSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/objectstore/OsSubscriptionSet$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;


# direct methods
.method constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet$2;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    iget-object v0, v0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$callback:Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;

    iget-object v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    iget-object v1, v1, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-interface {v0, v1}, Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;->onStateChange(Lio/realm/mongodb/sync/SubscriptionSet;)V

    return-void
.end method
