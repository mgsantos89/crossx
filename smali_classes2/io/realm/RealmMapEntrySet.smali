.class Lio/realm/RealmMapEntrySet;
.super Ljava/lang/Object;
.source "RealmMapEntrySet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;,
        Lio/realm/RealmMapEntrySet$RealmModelValueIterator;,
        Lio/realm/RealmMapEntrySet$UUIDValueIterator;,
        Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;,
        Lio/realm/RealmMapEntrySet$BinaryValueIterator;,
        Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;,
        Lio/realm/RealmMapEntrySet$DateValueIterator;,
        Lio/realm/RealmMapEntrySet$BooleanValueIterator;,
        Lio/realm/RealmMapEntrySet$StringValueIterator;,
        Lio/realm/RealmMapEntrySet$DoubleValueIterator;,
        Lio/realm/RealmMapEntrySet$FloatValueIterator;,
        Lio/realm/RealmMapEntrySet$IntegerValueIterator;,
        Lio/realm/RealmMapEntrySet$ShortValueIterator;,
        Lio/realm/RealmMapEntrySet$ByteValueIterator;,
        Lio/realm/RealmMapEntrySet$LongValueIterator;,
        Lio/realm/RealmMapEntrySet$EntrySetIterator;,
        Lio/realm/RealmMapEntrySet$IteratorType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final baseRealm:Lio/realm/BaseRealm;

.field private final equalsHelper:Lio/realm/EqualsHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

.field private final osMap:Lio/realm/internal/OsMap;

.field private final typeSelectorForMap:Lio/realm/TypeSelectorForMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;Lio/realm/TypeSelectorForMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/EqualsHelper<",
            "TK;TV;>;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    .line 75
    iput-object p2, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    .line 76
    iput-object p3, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    .line 77
    iput-object p4, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    .line 78
    iput-object p5, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/TypeSelectorForMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/TypeSelectorForMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    .line 63
    iput-object p2, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    .line 64
    iput-object p3, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    .line 65
    new-instance p1, Lio/realm/GenericEquals;

    invoke-direct {p1}, Lio/realm/GenericEquals;-><init>()V

    iput-object p1, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    .line 66
    iput-object p4, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    return-void
.end method

.method private static iteratorFactory(Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)Lio/realm/RealmMapEntrySet$EntrySetIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/RealmMapEntrySet$IteratorType;",
            "Lio/realm/internal/OsMap;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/TypeSelectorForMap;",
            ")",
            "Lio/realm/RealmMapEntrySet$EntrySetIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 215
    sget-object v0, Lio/realm/RealmMapEntrySet$1;->$SwitchMap$io$realm$RealmMapEntrySet$IteratorType:[I

    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet$IteratorType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 264
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid iterator type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p3, :cond_0

    .line 262
    new-instance p0, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;

    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmMapEntrySet$RealmModelValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)V

    return-object p0

    .line 260
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing class container when creating RealmModelValueIterator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 257
    :pswitch_1
    new-instance p0, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$RealmAnyValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 254
    :pswitch_2
    new-instance p0, Lio/realm/RealmMapEntrySet$UUIDValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$UUIDValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 251
    :pswitch_3
    new-instance p0, Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ObjectIdValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 248
    :pswitch_4
    new-instance p0, Lio/realm/RealmMapEntrySet$BinaryValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$BinaryValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 245
    :pswitch_5
    new-instance p0, Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$Decimal128ValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 242
    :pswitch_6
    new-instance p0, Lio/realm/RealmMapEntrySet$DateValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$DateValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 239
    :pswitch_7
    new-instance p0, Lio/realm/RealmMapEntrySet$BooleanValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$BooleanValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 236
    :pswitch_8
    new-instance p0, Lio/realm/RealmMapEntrySet$StringValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$StringValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 233
    :pswitch_9
    new-instance p0, Lio/realm/RealmMapEntrySet$DoubleValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$DoubleValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 230
    :pswitch_a
    new-instance p0, Lio/realm/RealmMapEntrySet$FloatValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$FloatValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 227
    :pswitch_b
    new-instance p0, Lio/realm/RealmMapEntrySet$IntegerValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$IntegerValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 224
    :pswitch_c
    new-instance p0, Lio/realm/RealmMapEntrySet$ShortValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ShortValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 221
    :pswitch_d
    new-instance p0, Lio/realm/RealmMapEntrySet$ByteValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$ByteValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    .line 218
    :pswitch_e
    new-instance p0, Lio/realm/RealmMapEntrySet$LongValueIterator;

    invoke-direct {p0, p1, p2}, Lio/realm/RealmMapEntrySet$LongValueIterator;-><init>(Lio/realm/internal/OsMap;Lio/realm/BaseRealm;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lio/realm/RealmMapEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This set is immutable and cannot be modified."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 94
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    return v3

    .line 97
    :cond_1
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lio/realm/RealmMapEntrySet;->equalsHelper:Lio/realm/EqualsHelper;

    move-object v4, p1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-virtual {v2, v1, v4}, Lio/realm/EqualsHelper;->equalsHelper(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_2
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->isEmpty()Z

    move-result p1

    return p1

    .line 177
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 180
    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-virtual {p0, v0}, Lio/realm/RealmMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 4

    .line 89
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->iteratorType:Lio/realm/RealmMapEntrySet$IteratorType;

    iget-object v1, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    iget-object v2, p0, Lio/realm/RealmMapEntrySet;->baseRealm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmMapEntrySet;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-static {v0, v1, v2, v3}, Lio/realm/RealmMapEntrySet;->iteratorFactory(Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/internal/OsMap;Lio/realm/BaseRealm;Lio/realm/TypeSelectorForMap;)Lio/realm/RealmMapEntrySet$EntrySetIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 168
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This set is immutable and cannot be modified."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 4

    .line 83
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

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

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 116
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 120
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/realm/RealmMapEntrySet;->osMap:Lio/realm/internal/OsMap;

    invoke-virtual {v0}, Lio/realm/internal/OsMap;->size()J

    move-result-wide v0

    .line 136
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    const-class v2, Ljava/util/Map$Entry;

    long-to-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p1

    .line 144
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 146
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 154
    :cond_2
    array-length p1, p1

    int-to-long v5, p1

    cmp-long p1, v5, v0

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 155
    aput-object p1, v2, v4

    :cond_3
    return-object v2
.end method
