.class abstract Lio/realm/TypeSelectorForMap;
.super Ljava/lang/Object;
.source "TypeSelectorForMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final baseRealm:Lio/realm/BaseRealm;

.field protected final osMap:Lio/realm/internal/OsMap;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lio/realm/TypeSelectorForMap;->baseRealm:Lio/realm/BaseRealm;

    .line 51
    iput-object p2, p0, Lio/realm/TypeSelectorForMap;->osMap:Lio/realm/internal/OsMap;

    return-void
.end method


# virtual methods
.method abstract freeze(Lio/realm/BaseRealm;)Lio/realm/RealmDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            ")",
            "Lio/realm/RealmDictionary<",
            "TV;>;"
        }
    .end annotation
.end method

.method protected getModelEntry(Lio/realm/BaseRealm;JLjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "JTK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Function \'getModelEntry\' can only be called from \'LinkSelectorForMap\' instances."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getRealmModel(Lio/realm/BaseRealm;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "J)TV;"
        }
    .end annotation

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Function \'getRealmModel\' can only be called from \'LinkSelectorForMap\' instances."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract getValueClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end method

.method abstract getValueClassName()Ljava/lang/String;
.end method

.method abstract getValues()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end method

.method protected putRealmModel(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "TK;TV;)TV;"
        }
    .end annotation

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Function \'putRealmModel\' can only be called from \'LinkSelectorForMap\' instances."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
