.class final Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $flowRealm:Lio/realm/Realm;

.field final synthetic $listener:Lio/realm/OrderedRealmCollectionChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic $results:Lio/realm/RealmResults;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmResults<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmResults;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmResults<",
            "TT;>;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "Lio/realm/RealmResults<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$flowRealm:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$results:Lio/realm/RealmResults;

    iput-object p3, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 194
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$flowRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$results:Lio/realm/RealmResults;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$listener:Lio/realm/OrderedRealmCollectionChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/OrderedRealmCollectionChangeListener;)V

    .line 196
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$changesetFrom$1$2;->$flowRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    :cond_0
    return-void
.end method
