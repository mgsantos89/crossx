.class Lio/realm/GenericPrimitiveValueOperator;
.super Lio/realm/MapValueOperator;
.source "ManagedMapManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/MapValueOperator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final equalsHelper:Lio/realm/EqualsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            ")V"
        }
    .end annotation

    .line 467
    new-instance v6, Lio/realm/GenericEquals;

    invoke-direct {v6}, Lio/realm/GenericEquals;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 476
    invoke-direct/range {p0 .. p5}, Lio/realm/MapValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    .line 477
    iput-object p6, p0, Lio/realm/GenericPrimitiveValueOperator;->equalsHelper:Lio/realm/EqualsHelper;

    return-void
.end method


# virtual methods
.method containsValueInternal(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 505
    iget-object v0, p0, Lio/realm/GenericPrimitiveValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->containsPrimitiveValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method entrySet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 500
    new-instance v6, Lio/realm/RealmMapEntrySet;

    iget-object v1, p0, Lio/realm/GenericPrimitiveValueOperator;->baseRealm:Lio/realm/BaseRealm;

    iget-object v2, p0, Lio/realm/GenericPrimitiveValueOperator;->osMap:Lio/realm/internal/OsMap;

    iget-object v3, p0, Lio/realm/GenericPrimitiveValueOperator;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    iget-object v4, p0, Lio/realm/GenericPrimitiveValueOperator;->equalsHelper:Lio/realm/EqualsHelper;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/realm/RealmMapEntrySet;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;Lio/realm/TypeSelectorForMap;)V

    return-object v6
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 483
    iget-object v0, p0, Lio/realm/GenericPrimitiveValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 487
    :cond_0
    invoke-virtual {p0, p1}, Lio/realm/GenericPrimitiveValueOperator;->processValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method processValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    return-object p1
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 493
    invoke-virtual {p0, p1}, Lio/realm/GenericPrimitiveValueOperator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lio/realm/GenericPrimitiveValueOperator;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v1, p1, p2}, Lio/realm/internal/OsMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
