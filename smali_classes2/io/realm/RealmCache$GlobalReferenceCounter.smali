.class Lio/realm/RealmCache$GlobalReferenceCounter;
.super Lio/realm/RealmCache$ReferenceCounter;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalReferenceCounter"
.end annotation


# instance fields
.field private cachedRealm:Lio/realm/BaseRealm;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lio/realm/RealmCache$ReferenceCounter;-><init>(Lio/realm/RealmCache$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/RealmCache$1;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lio/realm/RealmCache$GlobalReferenceCounter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadLocalCache()V
    .locals 4

    .line 139
    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->localCount:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 144
    iput-object v2, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    .line 147
    iget-object v1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Global reference counter of Realm"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not be negative."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getRealmInstance()Lio/realm/BaseRealm;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method getThreadLocalCount()I
    .locals 1

    .line 157
    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method hasInstanceAvailableForThread()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onRealmCreated(Lio/realm/BaseRealm;)V
    .locals 1

    .line 129
    iput-object p1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->cachedRealm:Lio/realm/BaseRealm;

    .line 131
    iget-object p1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->localCount:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lio/realm/RealmCache$GlobalReferenceCounter;->globalCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
