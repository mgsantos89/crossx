.class public interface abstract Lio/realm/internal/RealmAnyNativeFunctions;
.super Ljava/lang/Object;
.source "RealmAnyNativeFunctions.java"


# virtual methods
.method public varargs abstract callRawPredicate(Lio/realm/internal/TableQuery;Lio/realm/internal/objectstore/OsKeyPathMapping;Ljava/lang/String;[Lio/realm/RealmAny;)V
    .param p2    # Lio/realm/internal/objectstore/OsKeyPathMapping;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract handleItem(JLio/realm/RealmAny;)V
.end method

.method public abstract handleItem(JLjava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/realm/RealmAny;",
            ">;)V"
        }
    .end annotation
.end method
