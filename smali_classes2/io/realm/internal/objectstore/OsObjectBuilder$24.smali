.class Lio/realm/internal/objectstore/OsObjectBuilder$24;
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
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "[B>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleItem(JLjava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p3, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$24;->handleItem(JLjava/util/Map$Entry;)V

    return-void
.end method

.method public handleItem(JLjava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 262
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-static {p1, p2, v0, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$1600(JLjava/lang/String;[B)V

    return-void
.end method
