.class Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet$2;Ljava/lang/Exception;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    iput-object p2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;->this$1:Lio/realm/internal/objectstore/OsSubscriptionSet$2;

    iget-object v0, v0, Lio/realm/internal/objectstore/OsSubscriptionSet$2;->val$callback:Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;

    iget-object v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$2$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lio/realm/mongodb/sync/SubscriptionSet$StateChangeCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
