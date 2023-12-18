.class Lio/realm/internal/objectstore/OsSubscriptionSet$2;
.super Ljava/lang/Object;
.source "OsSubscriptionSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/objectstore/OsSubscriptionSet;->waitForSynchronizationAsync(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;)Lio/realm/RealmAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

.field final synthetic val$callback:Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;

.field final synthetic val$timeOut:Ljava/lang/Long;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    iput-object p2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$timeOut:Ljava/lang/Long;

    iput-object p3, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$callback:Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    :try_start_0
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    iget-object v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$timeOut:Ljava/lang/Long;

    iget-object v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/objectstore/OsSubscriptionSet;->waitForSynchronization(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Z

    .line 152
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-static {v0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->access$000(Lio/realm/internal/objectstore/OsSubscriptionSet;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;

    invoke-direct {v1, p0}, Lio/realm/internal/objectstore/OsSubscriptionSet$2$1;-><init>(Lio/realm/internal/objectstore/OsSubscriptionSet$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-static {v1}, Lio/realm/internal/objectstore/OsSubscriptionSet;->access$000(Lio/realm/internal/objectstore/OsSubscriptionSet;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;

    invoke-direct {v2, p0, v0}, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;-><init>(Lio/realm/internal/objectstore/OsSubscriptionSet$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
