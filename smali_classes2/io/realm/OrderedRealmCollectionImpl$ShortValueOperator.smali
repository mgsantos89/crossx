.class Lio/realm/OrderedRealmCollectionImpl$ShortValueOperator;
.super Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator;
.source "OrderedRealmCollectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/OrderedRealmCollectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShortValueOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator<",
        "Ljava/lang/Short;",
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
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 815
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/OrderedRealmCollectionImpl$PrimitiveValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 809
    invoke-virtual {p0, p1}, Lio/realm/OrderedRealmCollectionImpl$ShortValueOperator;->get(I)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Short;
    .locals 1

    .line 820
    iget-object v0, p0, Lio/realm/OrderedRealmCollectionImpl$ShortValueOperator;->osResults:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsResults;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    .line 821
    check-cast p1, Ljava/lang/Long;

    .line 822
    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 0

    .line 809
    invoke-virtual {p0, p1, p2}, Lio/realm/OrderedRealmCollectionImpl$ShortValueOperator;->getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getFromResults(ILio/realm/internal/OsResults;)Ljava/lang/Short;
    .locals 0

    .line 827
    invoke-virtual {p2, p1}, Lio/realm/internal/OsResults;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 831
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method
