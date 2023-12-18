.class abstract Lio/realm/ManagedListOperator;
.super Ljava/lang/Object;
.source "ManagedListOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INVALID_OBJECT_TYPE_MESSAGE:Ljava/lang/String; = "Unacceptable value type. Acceptable: %1$s, actual: %2$s ."

.field static final NULL_OBJECTS_NOT_ALLOWED_MESSAGE:Ljava/lang/String; = "RealmList does not accept null values."


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final osList:Lio/realm/internal/OsList;

.field final realm:Lio/realm/BaseRealm;


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .param p3    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/realm/ManagedListOperator;->realm:Lio/realm/BaseRealm;

    .line 57
    iput-object p3, p0, Lio/realm/ManagedListOperator;->clazz:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    return-void
.end method

.method private appendNull()V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    return-void
.end method


# virtual methods
.method public final append(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 96
    invoke-direct {p0}, Lio/realm/ManagedListOperator;->appendNull()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->appendValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract appendValue(Ljava/lang/Object;)V
.end method

.method protected checkInsertIndex(I)V
    .locals 3

    .line 83
    invoke-virtual {p0}, Lio/realm/ManagedListOperator;->size()I

    move-result v0

    if-ltz p1, :cond_0

    if-lt v0, p1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", size is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v1}, Lio/realm/internal/OsList;->size()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract checkValidValue(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final delete(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->delete(J)V

    return-void
.end method

.method final deleteAll()V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->deleteAll()V

    return-void
.end method

.method final deleteLast()V
    .locals 5

    .line 162
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->delete(J)V

    return-void
.end method

.method public abstract forRealmModel()Z
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final getOsList()Lio/realm/internal/OsList;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    return-object v0
.end method

.method public final insert(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->insertNull(I)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->insertValue(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected insertNull(I)V
    .locals 3

    .line 120
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->insertNull(J)V

    return-void
.end method

.method protected abstract insertValue(ILjava/lang/Object;)V
.end method

.method public final isEmpty()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->isValid()Z

    move-result v0

    return v0
.end method

.method final move(II)V
    .locals 3

    .line 146
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    int-to-long p1, p2

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/realm/internal/OsList;->move(JJ)V

    return-void
.end method

.method final remove(I)V
    .locals 3

    .line 150
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->remove(J)V

    return-void
.end method

.method final removeAll()V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 127
    invoke-virtual {p0, p2}, Lio/realm/ManagedListOperator;->checkValidValue(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lio/realm/ManagedListOperator;->setNull(I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/realm/ManagedListOperator;->setValue(ILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method protected setNull(I)V
    .locals 3

    .line 140
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->setNull(J)V

    return-void
.end method

.method protected abstract setValue(ILjava/lang/Object;)V
.end method

.method public final size()I
    .locals 4

    .line 72
    iget-object v0, p0, Lio/realm/ManagedListOperator;->osList:Lio/realm/internal/OsList;

    invoke-virtual {v0}, Lio/realm/internal/OsList;->size()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method
