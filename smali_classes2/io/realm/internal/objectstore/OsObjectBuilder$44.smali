.class Lio/realm/internal/objectstore/OsObjectBuilder$44;
.super Ljava/lang/Object;
.source "OsObjectBuilder.java"

# interfaces
.implements Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/objectstore/OsObjectBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/internal/objectstore/OsObjectBuilder$ItemCallback<",
        "Lio/realm/RealmAny;",
        ">;"
    }
.end annotation


# instance fields
.field private final realmAnyNativeFunctions:Lio/realm/internal/RealmAnyNativeFunctions;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v0, Lio/realm/RealmAnyNativeFunctionsImpl;

    invoke-direct {v0}, Lio/realm/RealmAnyNativeFunctionsImpl;-><init>()V

    iput-object v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder$44;->realmAnyNativeFunctions:Lio/realm/internal/RealmAnyNativeFunctions;

    return-void
.end method


# virtual methods
.method public handleItem(JLio/realm/RealmAny;)V
    .locals 1

    .line 760
    iget-object v0, p0, Lio/realm/internal/objectstore/OsObjectBuilder$44;->realmAnyNativeFunctions:Lio/realm/internal/RealmAnyNativeFunctions;

    invoke-interface {v0, p1, p2, p3}, Lio/realm/internal/RealmAnyNativeFunctions;->handleItem(JLio/realm/RealmAny;)V

    return-void
.end method

.method public bridge synthetic handleItem(JLjava/lang/Object;)V
    .locals 0

    .line 755
    check-cast p3, Lio/realm/RealmAny;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$44;->handleItem(JLio/realm/RealmAny;)V

    return-void
.end method
