.class Lio/realm/RealmSet$ManagedSetStrategy;
.super Lio/realm/RealmSet$SetStrategy;
.source "RealmSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagedSetStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmSet$SetStrategy<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final setValueOperator:Lio/realm/SetValueOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/SetValueOperator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/SetValueOperator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/SetValueOperator<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    invoke-direct {p0, v0}, Lio/realm/RealmSet$SetStrategy;-><init>(Lio/realm/RealmSet$1;)V

    .line 623
    iput-object p1, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    .line 624
    iput-object p2, p0, Lio/realm/RealmSet$ManagedSetStrategy;->valueClass:Ljava/lang/Class;

    return-void
.end method

.method private checkValidArray([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 881
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 882
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 886
    :cond_0
    new-instance v1, Ljava/lang/ArrayStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Array type must be of type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' but it was of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Cannot pass a null array when calling \'toArray\'."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkValidCollection(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 893
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Collection must not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 802
    invoke-direct {p0, p1}, Lio/realm/RealmSet$ManagedSetStrategy;->checkValidCollection(Ljava/util/Collection;)V

    .line 803
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/SetValueOperator;->addChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/SetValueOperator;->addChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method public average(Ljava/lang/String;)D
    .locals 2

    .line 664
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->average(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    .line 820
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 726
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 796
    invoke-direct {p0, p1}, Lio/realm/RealmSet$ManagedSetStrategy;->checkValidCollection(Ljava/util/Collection;)V

    .line 797
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public deleteAllFromRealm()Z
    .locals 1

    .line 681
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    iget-object v0, v0, Lio/realm/SetValueOperator;->baseRealm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 682
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->deleteAll()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public freeze()Lio/realm/RealmSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmSet<",
            "TE;>;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->freeze()Lio/realm/RealmSet;

    move-result-object v0

    return-object v0
.end method

.method getOsSet()Lio/realm/internal/OsSet;
    .locals 1

    .line 834
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->getOsSet()Lio/realm/internal/OsSet;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueClassName()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->getValueClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasListeners()Z
    .locals 1

    .line 868
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->hasListeners()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 721
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->isValid()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public max(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 654
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->max(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public maxDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 670
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->maximumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public min(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 648
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->min(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public minDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 676
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->minimumDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 791
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 814
    invoke-direct {p0, p1}, Lio/realm/RealmSet$ManagedSetStrategy;->checkValidCollection(Ljava/util/Collection;)V

    .line 815
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method removeAllChangeListeners()V
    .locals 1

    .line 863
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->removeAllChangeListeners()V

    return-void
.end method

.method removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/RealmChangeListener<",
            "Lio/realm/RealmSet<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/SetValueOperator;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/RealmChangeListener;)V

    return-void
.end method

.method removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmSet<",
            "TE;>;",
            "Lio/realm/SetChangeListener<",
            "TE;>;)V"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1, p2}, Lio/realm/SetValueOperator;->removeChangeListener(Lio/realm/RealmSet;Lio/realm/SetChangeListener;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1}, Lio/realm/RealmSet$ManagedSetStrategy;->checkValidCollection(Ljava/util/Collection;)V

    .line 809
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0, p1}, Lio/realm/SetValueOperator;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 716
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->size()I

    move-result v0

    return v0
.end method

.method public sum(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->where()Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/RealmQuery;->sum(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 736
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 738
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 739
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1}, Lio/realm/RealmSet$ManagedSetStrategy;->checkValidArray([Ljava/lang/Object;)V

    .line 751
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->size()I

    move-result v0

    int-to-long v0, v0

    .line 757
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    iget-object v2, p0, Lio/realm/RealmSet$ManagedSetStrategy;->valueClass:Ljava/lang/Class;

    long-to-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p1

    .line 764
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmSet$ManagedSetStrategy;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 766
    aput-object v6, v2, v4

    goto :goto_3

    .line 768
    :cond_2
    aput-object v5, v2, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 777
    :cond_3
    array-length p1, p1

    int-to-long v7, p1

    cmp-long p1, v7, v0

    if-lez p1, :cond_4

    .line 778
    aput-object v6, v2, v4

    :cond_4
    return-object v2
.end method

.method public where()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lio/realm/RealmSet$ManagedSetStrategy;->setValueOperator:Lio/realm/SetValueOperator;

    invoke-virtual {v0}, Lio/realm/SetValueOperator;->where()Lio/realm/RealmQuery;

    move-result-object v0

    return-object v0
.end method
