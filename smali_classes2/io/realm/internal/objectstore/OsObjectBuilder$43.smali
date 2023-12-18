.class Lio/realm/internal/objectstore/OsObjectBuilder$43;
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
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleItem(JLjava/lang/Object;)V
    .locals 0

    .line 748
    check-cast p3, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder$43;->handleItem(JLjava/util/UUID;)V

    return-void
.end method

.method public handleItem(JLjava/util/UUID;)V
    .locals 0

    .line 751
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->access$3000(JLjava/lang/String;)V

    return-void
.end method
