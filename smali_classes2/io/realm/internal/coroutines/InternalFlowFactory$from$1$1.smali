.class final Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InternalFlowFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/coroutines/InternalFlowFactory$from$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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

.field final synthetic $listener:Lio/realm/RealmChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/Realm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/Realm;Lio/realm/RealmChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/Realm;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->$flowRealm:Lio/realm/Realm;

    iput-object p2, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->$listener:Lio/realm/RealmChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 65
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->$flowRealm:Lio/realm/Realm;

    iget-object v1, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->$listener:Lio/realm/RealmChangeListener;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    .line 66
    iget-object v0, p0, Lio/realm/internal/coroutines/InternalFlowFactory$from$1$1;->$flowRealm:Lio/realm/Realm;

    invoke-virtual {v0}, Lio/realm/Realm;->close()V

    return-void
.end method
