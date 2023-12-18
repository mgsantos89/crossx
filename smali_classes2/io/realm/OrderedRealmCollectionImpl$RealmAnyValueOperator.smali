.class Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;
.super Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealmAnyValueOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator<",
        "Lio/realm/RealmAny;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "Lio/realm/RealmAny;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 867
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(I)Lio/realm/RealmAny;
    .locals 2

    .line 872
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsResults;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    .line 873
    check-cast p1, Lio/realm/internal/core/NativeRealmAny;

    .line 874
    new-instance v0, Lio/realm/RealmAny;

    iget-object v1, p0, Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v1, p1}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 861
    invoke-virtual {p0, p1}, Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;->get(I)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1
.end method

.method public getFromResults(ILio/realm/internal/OsResults;)Lio/realm/RealmAny;
    .locals 1

    .line 879
    invoke-virtual {p2, p1}, Lio/realm/internal/OsResults;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/internal/core/NativeRealmAny;

    .line 880
    new-instance p2, Lio/realm/RealmAny;

    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-static {v0, p1}, Lio/realm/RealmAnyOperator;->fromNativeRealmAny(Lio/realm/BaseRealm;Lio/realm/internal/core/NativeRealmAny;)Lio/realm/RealmAnyOperator;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/RealmAny;-><init>(Lio/realm/RealmAnyOperator;)V

    return-object p2
.end method

.method public bridge synthetic getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 0

    .line 861
    invoke-virtual {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl$RealmAnyValueOperator;->getFromResults(ILio/realm/internal/OsResults;)Lio/realm/RealmAny;

    move-result-object p1

    return-object p1
.end method
