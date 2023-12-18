.class Lio/realm/internal/objectstore/OsSubscriptionSet$4;
.super Ljava/lang/Object;
.source "OsSubscriptionSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/internal/objectstore/OsSubscriptionSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/realm/mongodb/sync/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private final size:I

.field final synthetic this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;


# direct methods
.method constructor <init>(Lio/realm/internal/objectstore/OsSubscriptionSet;)V
    .locals 1

    .line 224
    iput-object p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    .line 226
    invoke-virtual {p1}, Lio/realm/internal/objectstore/OsSubscriptionSet;->size()I

    move-result p1

    iput p1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->size:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 230
    iget v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    iget v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lio/realm/mongodb/sync/Subscription;
    .locals 3

    .line 235
    iget v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    iget v1, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->size:I

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->this$0:Lio/realm/internal/objectstore/OsSubscriptionSet;

    invoke-static {v0}, Lio/realm/internal/objectstore/OsSubscriptionSet;->access$100(Lio/realm/internal/objectstore/OsSubscriptionSet;)J

    move-result-wide v0

    iget v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    invoke-static {v0, v1, v2}, Lio/realm/internal/objectstore/OsSubscriptionSet;->access$200(JI)J

    move-result-wide v0

    .line 240
    iget v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    .line 241
    new-instance v2, Lio/realm/internal/objectstore/OsSubscription;

    invoke-direct {v2, v0, v1}, Lio/realm/internal/objectstore/OsSubscription;-><init>(J)V

    return-object v2

    .line 236
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Iterator has no more elements. Tried index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->cursor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lio/realm/internal/objectstore/OsSubscriptionSet$4;->next()Lio/realm/mongodb/sync/Subscription;

    move-result-object v0

    return-object v0
.end method
