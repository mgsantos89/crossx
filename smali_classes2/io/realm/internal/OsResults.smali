.class public Lio/realm/internal/OsResults;
.super Ljava/lang/Object;
.source "OsResults.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Lio/realm/internal/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/internal/OsResults$AddListTypeDelegate;,
        Lio/realm/internal/OsResults$Mode;,
        Lio/realm/internal/OsResults$Aggregate;,
        Lio/realm/internal/OsResults$ListIterator;,
        Lio/realm/internal/OsResults$Iterator;
    }
.end annotation


# static fields
.field public static final AGGREGATE_FUNCTION_AVERAGE:B = 0x3t

.field public static final AGGREGATE_FUNCTION_MAXIMUM:B = 0x2t

.field public static final AGGREGATE_FUNCTION_MINIMUM:B = 0x1t

.field public static final AGGREGATE_FUNCTION_SUM:B = 0x4t

.field private static final CLOSED_REALM_MESSAGE:Ljava/lang/String; = "This Realm instance has already been closed, making it unusable."

.field public static final MODE_EMPTY:B = 0x0t

.field public static final MODE_LIST:B = 0x2t

.field public static final MODE_QUERY:B = 0x3t

.field public static final MODE_TABLE:B = 0x1t

.field public static final MODE_TABLEVIEW:B = 0x4t

.field private static final nativeFinalizerPtr:J


# instance fields
.field private final context:Lio/realm/internal/NativeContext;

.field private isSnapshot:Z

.field protected loaded:Z

.field private final nativePtr:J

.field protected final observerPairs:Lio/realm/internal/ObserverPairList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/ObserverPairList<",
            "Lio/realm/internal/ObservableCollection$CollectionObserverPair;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedRealm:Lio/realm/internal/OsSharedRealm;

.field private final table:Lio/realm/internal/Table;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 213
    invoke-static {}, Lio/realm/internal/OsResults;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/OsResults;->nativeFinalizerPtr:J

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSharedRealm;J)V
    .locals 3

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    .line 220
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 308
    iput-object p1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 309
    iget-object v1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object v1, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    .line 310
    iput-wide p2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    .line 311
    invoke-virtual {v1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 312
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getMode()Lio/realm/internal/OsResults$Mode;

    move-result-object v1

    sget-object v2, Lio/realm/internal/OsResults$Mode;->QUERY:Lio/realm/internal/OsResults$Mode;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    .line 313
    new-instance v0, Lio/realm/internal/Table;

    invoke-static {p2, p3}, Lio/realm/internal/OsResults;->nativeGetTable(J)J

    move-result-wide p2

    invoke-direct {v0, p1, p2, p3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    iput-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V
    .locals 2

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    .line 220
    new-instance v1, Lio/realm/internal/ObserverPairList;

    invoke-direct {v1}, Lio/realm/internal/ObserverPairList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    .line 317
    iput-object p1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    .line 318
    iget-object p1, p1, Lio/realm/internal/OsSharedRealm;->context:Lio/realm/internal/NativeContext;

    iput-object p1, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    .line 319
    iput-object p2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    .line 320
    iput-wide p3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    .line 321
    invoke-virtual {p1, p0}, Lio/realm/internal/NativeContext;->addReference(Lio/realm/internal/NativeObject;)V

    .line 322
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getMode()Lio/realm/internal/OsResults$Mode;

    move-result-object p1

    sget-object p2, Lio/realm/internal/OsResults$Mode;->QUERY:Lio/realm/internal/OsResults$Mode;

    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/OsResults;)Lio/realm/internal/OsSharedRealm;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-object p0
.end method

.method static synthetic access$100(Lio/realm/internal/OsResults;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    return p0
.end method

.method private addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "TT;>;",
            "Lio/realm/internal/OsResults$AddListTypeDelegate<",
            "TT;>;)V"
        }
    .end annotation

    .line 544
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 545
    invoke-interface {p3, v0, p2}, Lio/realm/internal/OsResults$AddListTypeDelegate;->addList(Lio/realm/internal/objectstore/OsObjectBuilder;Lio/realm/RealmList;)V

    .line 547
    :try_start_0
    iget-wide p2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->getNativePtr()J

    move-result-wide v1

    invoke-static {p2, p3, p1, v1, v2}, Lio/realm/internal/OsResults;->nativeSetList(JLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->close()V

    .line 550
    throw p1
.end method

.method public static createForBacklinks(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;Lio/realm/internal/Table;Ljava/lang/String;)Lio/realm/internal/OsResults;
    .locals 8

    .line 289
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    .line 290
    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    .line 291
    invoke-virtual {p2}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v4

    .line 292
    invoke-virtual {p2, p3}, Lio/realm/internal/Table;->getColumnKey(Ljava/lang/String;)J

    move-result-wide v6

    .line 288
    invoke-static/range {v0 .. v7}, Lio/realm/internal/OsResults;->nativeCreateResultsFromBacklinks(JJJJ)J

    move-result-wide v0

    .line 293
    new-instance p1, Lio/realm/internal/OsResults;

    invoke-direct {p1, p0, p2, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p1
.end method

.method public static createFromMap(Lio/realm/internal/OsSharedRealm;J)Lio/realm/internal/OsResults;
    .locals 1

    .line 303
    new-instance v0, Lio/realm/internal/OsResults;

    invoke-direct {v0, p0, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;J)V

    return-object v0
.end method

.method public static createFromQuery(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;)Lio/realm/internal/OsResults;
    .locals 4

    .line 297
    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->validateQuery()V

    .line 298
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeCreateResults(JJ)J

    move-result-wide v0

    .line 299
    new-instance v2, Lio/realm/internal/OsResults;

    invoke-virtual {p1}, Lio/realm/internal/TableQuery;->getTable()Lio/realm/internal/Table;

    move-result-object p1

    invoke-direct {v2, p0, p1, v0, v1}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object v2
.end method

.method private static native nativeAggregate(JJB)Ljava/lang/Object;
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeContains(JJ)Z
.end method

.method protected static native nativeCreateResults(JJ)J
.end method

.method private static native nativeCreateResultsFromBacklinks(JJJJ)J
.end method

.method private static native nativeCreateSnapshot(J)J
.end method

.method private static native nativeDelete(JJ)V
.end method

.method private static native nativeDeleteFirst(J)Z
.end method

.method private static native nativeDeleteLast(J)Z
.end method

.method private static native nativeEvaluateQueryIfNeeded(JZ)V
.end method

.method private static native nativeFirstRow(J)J
.end method

.method private static native nativeFreeze(JJ)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetMode(J)B
.end method

.method private static native nativeGetRow(JI)J
.end method

.method private static native nativeGetTable(J)J
.end method

.method private static native nativeGetValue(JI)Ljava/lang/Object;
.end method

.method private static native nativeIndexOf(JJ)J
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLastRow(J)J
.end method

.method private static native nativeSetBinary(JLjava/lang/String;[B)V
    .param p3    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetBoolean(JLjava/lang/String;Z)V
.end method

.method private static native nativeSetDecimal128(JLjava/lang/String;JJ)V
.end method

.method private static native nativeSetDouble(JLjava/lang/String;D)V
.end method

.method private static native nativeSetFloat(JLjava/lang/String;F)V
.end method

.method private static native nativeSetInt(JLjava/lang/String;J)V
.end method

.method private static native nativeSetList(JLjava/lang/String;J)V
.end method

.method private static native nativeSetNull(JLjava/lang/String;)V
.end method

.method private static native nativeSetObject(JLjava/lang/String;J)V
.end method

.method private static native nativeSetObjectId(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetString(JLjava/lang/String;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetTimestamp(JLjava/lang/String;J)V
.end method

.method private static native nativeSetUUID(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSize(J)J
.end method

.method private native nativeStartListening(J)V
.end method

.method private native nativeStopListening(J)V
.end method

.method private static native nativeStringDescriptor(JLjava/lang/String;J)J
.end method

.method private static native nativeWhere(J)J
.end method

.method private static stringDescriptor(JLjava/lang/String;J)J
    .locals 0

    .line 767
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/realm/internal/OsResults;->nativeStringDescriptor(JLjava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 769
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Realm accessed from incorrect thread."

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 770
    throw p0

    .line 772
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal Argument: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native toJSON(JI)Ljava/lang/String;
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsResults;->nativeStartListening(J)V

    .line 683
    :cond_0
    new-instance v0, Lio/realm/internal/ObservableCollection$CollectionObserverPair;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/ObservableCollection$CollectionObserverPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    iget-object p1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1, v0}, Lio/realm/internal/ObserverPairList;->add(Lio/realm/internal/ObserverPairList$ObserverPair;)V

    return-void
.end method

.method public addListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 688
    new-instance v0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/OsResults;->addListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public aggregateDate(Lio/realm/internal/OsResults$Aggregate;J)Ljava/util/Date;
    .locals 2

    .line 399
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsResults$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/OsResults;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 401
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Illegal Argument: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public aggregateNumber(Lio/realm/internal/OsResults$Aggregate;J)Ljava/lang/Number;
    .locals 2

    .line 391
    :try_start_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsResults$Aggregate;->getValue()B

    move-result p1

    invoke-static {v0, v1, p2, p3, p1}, Lio/realm/internal/OsResults;->nativeAggregate(JJB)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 393
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Illegal Argument: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clear()V
    .locals 2

    .line 410
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeClear(J)V

    return-void
.end method

.method public contains(Lio/realm/internal/UncheckedRow;)Z
    .locals 4

    .line 437
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeContains(JJ)Z

    move-result p1

    return p1
.end method

.method public createSnapshot()Lio/realm/internal/OsResults;
    .locals 5

    .line 326
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->isSnapshot:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 329
    :cond_0
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v3, v4}, Lio/realm/internal/OsResults;->nativeCreateSnapshot(J)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    const/4 v1, 0x1

    .line 330
    iput-boolean v1, v0, Lio/realm/internal/OsResults;->isSnapshot:Z

    return-object v0
.end method

.method public delete(J)V
    .locals 2

    .line 446
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeDelete(JJ)V

    return-void
.end method

.method public deleteFirst()Z
    .locals 2

    .line 450
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeDeleteFirst(J)Z

    move-result v0

    return v0
.end method

.method public deleteLast()Z
    .locals 2

    .line 454
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeDeleteLast(J)Z

    move-result v0

    return v0
.end method

.method public distinct(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;)Lio/realm/internal/OsResults;
    .locals 7
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 432
    invoke-static {p2}, Lio/realm/internal/TableQuery;->buildDistinctDescriptor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 433
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v3, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    invoke-static {v3, v4, p2, v5, v6}, Lio/realm/internal/OsResults;->stringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object v0
.end method

.method public firstUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 4

    .line 361
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeFirstRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/OsResults;
    .locals 6

    .line 335
    new-instance v0, Lio/realm/internal/OsResults;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v1, p1}, Lio/realm/internal/Table;->freeze(Lio/realm/internal/OsSharedRealm;)Lio/realm/internal/Table;

    move-result-object v1

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/OsResults;->nativeFreeze(JJ)J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    .line 336
    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->load()V

    :cond_0
    return-object v0
.end method

.method public getMode()Lio/realm/internal/OsResults$Mode;
    .locals 2

    .line 731
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeGetMode(J)B

    move-result v0

    invoke-static {v0}, Lio/realm/internal/OsResults$Mode;->getByValue(B)Lio/realm/internal/OsResults$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .line 349
    sget-wide v0, Lio/realm/internal/OsResults;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    return-wide v0
.end method

.method public getTable()Lio/realm/internal/Table;
    .locals 1

    .line 377
    iget-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    return-object v0
.end method

.method public getUncheckedRow(I)Lio/realm/internal/UncheckedRow;
    .locals 3

    .line 357
    iget-object v0, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v1, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v1, v2, p1}, Lio/realm/internal/OsResults;->nativeGetRow(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 2

    .line 353
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeGetValue(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Lio/realm/internal/UncheckedRow;)I
    .locals 4

    .line 441
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/OsResults;->nativeIndexOf(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p1, v0

    :goto_0
    return p1
.end method

.method public isLoaded()Z
    .locals 1

    .line 746
    iget-boolean v0, p0, Lio/realm/internal/OsResults;->loaded:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 708
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeIsValid(J)Z

    move-result v0

    return v0
.end method

.method public lastUncheckedRow()Lio/realm/internal/UncheckedRow;
    .locals 4

    .line 369
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeLastRow(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->getUncheckedRowByPointer(J)Lio/realm/internal/UncheckedRow;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public load()V
    .locals 4

    const-string v0, "Illegal Argument: "

    .line 750
    iget-boolean v1, p0, Lio/realm/internal/OsResults;->loaded:Z

    if-eqz v1, :cond_0

    return-void

    .line 754
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lio/realm/internal/OsResults;->nativePtr:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/realm/internal/OsResults;->nativeEvaluateQueryIfNeeded(JZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 758
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot sort on a collection property"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    const-wide/16 v0, 0x0

    .line 762
    invoke-virtual {p0, v0, v1}, Lio/realm/internal/OsResults;->notifyChangeListeners(J)V

    return-void

    .line 759
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    .line 756
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public notifyChangeListeners(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 717
    new-instance p1, Lio/realm/internal/EmptyLoadChangeSet;

    invoke-direct {p1}, Lio/realm/internal/EmptyLoadChangeSet;-><init>()V

    goto :goto_0

    .line 718
    :cond_0
    new-instance v0, Lio/realm/internal/OsCollectionChangeSet;

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-direct {v0, p1, p2, v2}, Lio/realm/internal/OsCollectionChangeSet;-><init>(JZ)V

    move-object p1, v0

    .line 723
    :goto_0
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lio/realm/internal/OsResults;->isLoaded()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 726
    :cond_1
    iput-boolean v1, p0, Lio/realm/internal/OsResults;->loaded:Z

    .line 727
    iget-object p2, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    new-instance v0, Lio/realm/internal/ObservableCollection$Callback;

    invoke-direct {v0, p1}, Lio/realm/internal/ObservableCollection$Callback;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-virtual {p2, v0}, Lio/realm/internal/ObserverPairList;->foreach(Lio/realm/internal/ObserverPairList$Callback;)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 2

    .line 703
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0}, Lio/realm/internal/ObserverPairList;->clear()V

    .line 704
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/OrderedRealmCollectionChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/ObserverPairList;->remove(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    iget-object p1, p0, Lio/realm/internal/OsResults;->observerPairs:Lio/realm/internal/ObserverPairList;

    invoke-virtual {p1}, Lio/realm/internal/ObserverPairList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 694
    iget-wide p1, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-direct {p0, p1, p2}, Lio/realm/internal/OsResults;->nativeStopListening(J)V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/RealmChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 699
    new-instance v0, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;

    invoke-direct {v0, p2}, Lio/realm/internal/ObservableCollection$RealmChangeListenerWrapper;-><init>(Lio/realm/RealmChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lio/realm/internal/OsResults;->removeListener(Ljava/lang/Object;Lio/realm/OrderedRealmCollectionChangeListener;)V

    return-void
.end method

.method public setBlob(Ljava/lang/String;[B)V
    .locals 2
    .param p2    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 482
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetBinary(JLjava/lang/String;[B)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2

    .line 462
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetBoolean(JLjava/lang/String;Z)V

    return-void
.end method

.method public setBooleanList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 599
    new-instance v0, Lio/realm/internal/OsResults$6;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$6;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setByteArrayList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "[B>;)V"
        }
    .end annotation

    .line 608
    new-instance v0, Lio/realm/internal/OsResults$7;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$7;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setByteList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 563
    new-instance v0, Lio/realm/internal/OsResults$2;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$2;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)V
    .locals 4
    .param p2    # Ljava/util/Date;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 487
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lio/realm/internal/OsResults;->nativeSetTimestamp(JLjava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public setDateList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 617
    new-instance v0, Lio/realm/internal/OsResults$8;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$8;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDecimal128(Ljava/lang/String;Lorg/bson/types/Decimal128;)V
    .locals 9
    .param p2    # Lorg/bson/types/Decimal128;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 495
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getLow()J

    move-result-wide v5

    invoke-virtual {p2}, Lorg/bson/types/Decimal128;->getHigh()J

    move-result-wide v7

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lio/realm/internal/OsResults;->nativeSetDecimal128(JLjava/lang/String;JJ)V

    :goto_0
    return-void
.end method

.method public setDecimal128List(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lorg/bson/types/Decimal128;",
            ">;)V"
        }
    .end annotation

    .line 653
    new-instance v0, Lio/realm/internal/OsResults$12;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$12;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 2

    .line 474
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsResults;->nativeSetDouble(JLjava/lang/String;D)V

    return-void
.end method

.method public setDoubleList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 635
    new-instance v0, Lio/realm/internal/OsResults$10;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$10;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2

    .line 470
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetFloat(JLjava/lang/String;F)V

    return-void
.end method

.method public setFloatList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 626
    new-instance v0, Lio/realm/internal/OsResults$9;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$9;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;J)V
    .locals 2

    .line 466
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lio/realm/internal/OsResults;->nativeSetInt(JLjava/lang/String;J)V

    return-void
.end method

.method public setIntegerList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 581
    new-instance v0, Lio/realm/internal/OsResults$4;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$4;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setLongList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 590
    new-instance v0, Lio/realm/internal/OsResults$5;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$5;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setModelList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lio/realm/RealmModel;",
            ">;)V"
        }
    .end annotation

    .line 644
    new-instance v0, Lio/realm/internal/OsResults$11;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$11;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setNull(Ljava/lang/String;)V
    .locals 2

    .line 458
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    return-void
.end method

.method public setObject(Ljava/lang/String;Lio/realm/internal/Row;)V
    .locals 4
    .param p2    # Lio/realm/internal/Row;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 519
    invoke-virtual {p0, p1}, Lio/realm/internal/OsResults;->setNull(Ljava/lang/String;)V

    goto :goto_1

    .line 522
    :cond_0
    instance-of v0, p2, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_1

    .line 524
    check-cast p2, Lio/realm/internal/UncheckedRow;

    invoke-virtual {p2}, Lio/realm/internal/UncheckedRow;->getNativePtr()J

    move-result-wide v0

    goto :goto_0

    .line 525
    :cond_1
    instance-of v0, p2, Lio/realm/internal/CheckedRow;

    if-eqz v0, :cond_2

    .line 527
    check-cast p2, Lio/realm/internal/CheckedRow;

    invoke-virtual {p2}, Lio/realm/internal/CheckedRow;->getNativePtr()J

    move-result-wide v0

    .line 532
    :goto_0
    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v2, v3, p1, v0, v1}, Lio/realm/internal/OsResults;->nativeSetObject(JLjava/lang/String;J)V

    :goto_1
    return-void

    .line 530
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Row type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setObjectId(Ljava/lang/String;Lorg/bson/types/ObjectId;)V
    .locals 2
    .param p2    # Lorg/bson/types/ObjectId;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 503
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Lorg/bson/types/ObjectId;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetObjectId(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setObjectIdList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Lorg/bson/types/ObjectId;",
            ">;)V"
        }
    .end annotation

    .line 662
    new-instance v0, Lio/realm/internal/OsResults$13;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$13;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setShortList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 572
    new-instance v0, Lio/realm/internal/OsResults$3;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$3;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 478
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStringList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 554
    new-instance v0, Lio/realm/internal/OsResults$1;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$1;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public setUUID(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 2
    .param p2    # Ljava/util/UUID;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 511
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->nativeSetNull(JLjava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_0
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsResults;->nativeSetUUID(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setUUIDList(Ljava/lang/String;Lio/realm/RealmList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/RealmList<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 671
    new-instance v0, Lio/realm/internal/OsResults$14;

    invoke-direct {v0, p0}, Lio/realm/internal/OsResults$14;-><init>(Lio/realm/internal/OsResults;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/internal/OsResults;->addTypeSpecificList(Ljava/lang/String;Lio/realm/RealmList;Lio/realm/internal/OsResults$AddListTypeDelegate;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 406
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sort(Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;Lio/realm/Sort;)Lio/realm/internal/OsResults;
    .locals 6
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 414
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/realm/Sort;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Lio/realm/internal/TableQuery;->buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;

    move-result-object p2

    .line 415
    new-instance p3, Lio/realm/internal/OsResults;

    iget-object v0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, p2, v4, v5}, Lio/realm/internal/OsResults;->stringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p3, v0, v1, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p3
.end method

.method public sort(Lio/realm/internal/objectstore/OsKeyPathMapping;[Ljava/lang/String;[Lio/realm/Sort;)Lio/realm/internal/OsResults;
    .locals 6
    .param p1    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_2

    .line 420
    array-length v0, p3

    if-eqz v0, :cond_2

    .line 423
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_1

    .line 427
    invoke-static {p2, p3}, Lio/realm/internal/TableQuery;->buildSortDescriptor([Ljava/lang/String;[Lio/realm/Sort;)Ljava/lang/String;

    move-result-object p2

    .line 428
    new-instance p3, Lio/realm/internal/OsResults;

    iget-object v0, p0, Lio/realm/internal/OsResults;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/OsResults;->nativePtr:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsKeyPathMapping;->getNativePtr()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    invoke-static {v2, v3, p2, v4, v5}, Lio/realm/internal/OsResults;->stringDescriptor(JLjava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p3, v0, v1, p1, p2}, Lio/realm/internal/OsResults;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/Table;J)V

    return-object p3

    .line 424
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of fields and sort orders do not match."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must provide at least one sort order."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJSON(I)Ljava/lang/String;
    .locals 2

    .line 386
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsResults;->toJSON(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public where()Lio/realm/internal/TableQuery;
    .locals 5

    .line 381
    iget-wide v0, p0, Lio/realm/internal/OsResults;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/OsResults;->nativeWhere(J)J

    move-result-wide v0

    .line 382
    new-instance v2, Lio/realm/internal/TableQuery;

    iget-object v3, p0, Lio/realm/internal/OsResults;->context:Lio/realm/internal/NativeContext;

    iget-object v4, p0, Lio/realm/internal/OsResults;->table:Lio/realm/internal/Table;

    invoke-direct {v2, v3, v4, v0, v1}, Lio/realm/internal/TableQuery;-><init>(Lio/realm/internal/NativeContext;Lio/realm/internal/Table;J)V

    return-object v2
.end method
