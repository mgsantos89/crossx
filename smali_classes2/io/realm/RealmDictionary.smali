.class public Lio/realm/RealmDictionary;
.super Lio/realm/RealmMap;
.source "RealmDictionary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/RealmMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lio/realm/RealmMap;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 82
    invoke-static {p3, p1, p2}, Lio/realm/RealmDictionary;->getStrategy(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/RealmMap;-><init>(Lio/realm/RealmMap$MapStrategy;)V

    return-void
.end method

.method constructor <init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p3, p1, p2}, Lio/realm/RealmDictionary;->getStrategy(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/realm/RealmMap;-><init>(Lio/realm/RealmMap$MapStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lio/realm/RealmMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private static getManager(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/DictionaryManager<",
            "TV;>;"
        }
    .end annotation

    .line 143
    new-instance v7, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    invoke-direct {v7, p1, p2, v0, p0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 147
    const-class v0, Lio/realm/RealmAny;

    if-ne p0, v0, :cond_0

    .line 148
    new-instance p0, Lio/realm/RealmAnyValueOperator;

    invoke-direct {p0, p1, p2, v7}, Lio/realm/RealmAnyValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 149
    :cond_0
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_1

    .line 150
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Long;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->LONG:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 151
    :cond_1
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_2

    .line 152
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Float;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 153
    :cond_2
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_3

    .line 154
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Double;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 155
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_4

    .line 156
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/String;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->STRING:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 157
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_5

    .line 158
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/lang/Boolean;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 159
    :cond_5
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_6

    .line 160
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/util/Date;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DATE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 161
    :cond_6
    const-class v0, Lorg/bson/types/Decimal128;

    if-ne p0, v0, :cond_7

    .line 162
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Lorg/bson/types/Decimal128;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 163
    :cond_7
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_8

    .line 164
    new-instance p0, Lio/realm/IntegerValueOperator;

    invoke-direct {p0, p1, p2, v7}, Lio/realm/IntegerValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 165
    :cond_8
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_9

    .line 166
    new-instance p0, Lio/realm/ShortValueOperator;

    invoke-direct {p0, p1, p2, v7}, Lio/realm/ShortValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 167
    :cond_9
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_a

    .line 168
    new-instance p0, Lio/realm/ByteValueOperator;

    invoke-direct {p0, p1, p2, v7}, Lio/realm/ByteValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto :goto_0

    .line 169
    :cond_a
    const-class v0, [B

    if-ne p0, v0, :cond_b

    .line 170
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, [B

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v6, Lio/realm/BinaryEquals;

    invoke-direct {v6}, Lio/realm/BinaryEquals;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V

    goto :goto_0

    .line 171
    :cond_b
    const-class v0, Lorg/bson/types/ObjectId;

    if-ne p0, v0, :cond_c

    .line 172
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Lorg/bson/types/ObjectId;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 173
    :cond_c
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_d

    .line 174
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v1, Ljava/util/UUID;

    sget-object v5, Lio/realm/RealmMapEntrySet$IteratorType;->UUID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    .line 179
    :goto_0
    new-instance p2, Lio/realm/DictionaryManager;

    invoke-direct {p2, p1, p0, v7}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-object p2

    .line 176
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Maps of RealmAny or one of the types that can be boxed inside RealmAny can be used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getManager(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/DictionaryManager<",
            "TV;>;"
        }
    .end annotation

    .line 191
    const-class v0, Lio/realm/RealmAny;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance p0, Lio/realm/RealmAnyValueOperator;

    new-instance v0, Lio/realm/SelectorForMap;

    const-class v1, Ljava/lang/String;

    const-class v2, Lio/realm/RealmAny;

    invoke-direct {v0, p1, p2, v1, v2}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/RealmAnyValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 193
    :cond_0
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Long;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->LONG:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 195
    :cond_1
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Float;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->FLOAT:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 197
    :cond_2
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Double;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DOUBLE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 199
    :cond_3
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/String;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->STRING:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/lang/Boolean;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->BOOLEAN:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 204
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/util/Date;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/util/Date;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DATE:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 205
    :cond_6
    const-class v0, Lorg/bson/types/Decimal128;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Lorg/bson/types/Decimal128;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Lorg/bson/types/Decimal128;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->DECIMAL128:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto/16 :goto_0

    .line 207
    :cond_7
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    new-instance p0, Lio/realm/IntegerValueOperator;

    new-instance v0, Lio/realm/SelectorForMap;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, p1, p2, v1, v2}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/IntegerValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 210
    new-instance p0, Lio/realm/ShortValueOperator;

    new-instance v0, Lio/realm/SelectorForMap;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    invoke-direct {v0, p1, p2, v1, v2}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/ShortValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 212
    new-instance p0, Lio/realm/ByteValueOperator;

    new-instance v0, Lio/realm/SelectorForMap;

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    invoke-direct {v0, p1, p2, v1, v2}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lio/realm/ByteValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    goto/16 :goto_0

    .line 213
    :cond_a
    const-class v0, [B

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 214
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v3, [B

    new-instance v6, Lio/realm/SelectorForMap;

    const-class v1, Ljava/lang/String;

    invoke-direct {v6, p1, p2, v1, v0}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v7, Lio/realm/RealmMapEntrySet$IteratorType;->BINARY:Lio/realm/RealmMapEntrySet$IteratorType;

    new-instance v8, Lio/realm/BinaryEquals;

    invoke-direct {v8}, Lio/realm/BinaryEquals;-><init>()V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;Lio/realm/EqualsHelper;)V

    goto :goto_0

    .line 215
    :cond_b
    const-class v0, Lorg/bson/types/ObjectId;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 216
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Lorg/bson/types/ObjectId;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Lorg/bson/types/ObjectId;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->OBJECT_ID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 217
    :cond_c
    const-class v0, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 218
    new-instance p0, Lio/realm/GenericPrimitiveValueOperator;

    const-class v2, Ljava/util/UUID;

    new-instance v5, Lio/realm/SelectorForMap;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/util/UUID;

    invoke-direct {v5, p1, p2, v0, v1}, Lio/realm/SelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object v6, Lio/realm/RealmMapEntrySet$IteratorType;->UUID:Lio/realm/RealmMapEntrySet$IteratorType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lio/realm/GenericPrimitiveValueOperator;-><init>(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;Lio/realm/RealmMapEntrySet$IteratorType;)V

    goto :goto_0

    .line 220
    :cond_d
    new-instance v0, Lio/realm/RealmModelValueOperator;

    new-instance v1, Lio/realm/DynamicSelectorForMap;

    invoke-direct {v1, p1, p2, p0}, Lio/realm/DynamicSelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lio/realm/RealmModelValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    move-object p0, v0

    .line 223
    :goto_0
    new-instance p2, Lio/realm/DictionaryManager;

    iget-object v0, p0, Lio/realm/MapValueOperator;->typeSelectorForMap:Lio/realm/TypeSelectorForMap;

    invoke-direct {p2, p1, p0, v0}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    return-object p2
.end method

.method private static getRealmSelector(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/LinkSelectorForMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Lio/realm/RealmModel;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/LinkSelectorForMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lio/realm/LinkSelectorForMap;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1, p0}, Lio/realm/LinkSelectorForMap;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getStrategy(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/RealmMap$ManagedMapStrategy<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lio/realm/CollectionUtils;->isClassForRealmModel(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getRealmSelector(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/LinkSelectorForMap;

    move-result-object p0

    .line 121
    new-instance v0, Lio/realm/DictionaryManager;

    new-instance v1, Lio/realm/RealmModelValueOperator;

    invoke-direct {v1, p1, p2, p0}, Lio/realm/RealmModelValueOperator;-><init>(Lio/realm/BaseRealm;Lio/realm/internal/OsMap;Lio/realm/TypeSelectorForMap;)V

    invoke-direct {v0, p1, v1, p0}, Lio/realm/DictionaryManager;-><init>(Lio/realm/BaseRealm;Lio/realm/MapValueOperator;Lio/realm/TypeSelectorForMap;)V

    .line 125
    new-instance p0, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p0, v0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p0

    .line 128
    :cond_0
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getManager(Ljava/lang/Class;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;

    move-result-object p0

    .line 129
    new-instance p1, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p1, p0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p1
.end method

.method private static getStrategy(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/RealmMap$ManagedMapStrategy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/realm/BaseRealm;",
            "Lio/realm/internal/OsMap;",
            ")",
            "Lio/realm/RealmMap$ManagedMapStrategy<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 135
    invoke-static {p0, p1, p2}, Lio/realm/RealmDictionary;->getManager(Ljava/lang/String;Lio/realm/BaseRealm;Lio/realm/internal/OsMap;)Lio/realm/DictionaryManager;

    move-result-object p0

    .line 136
    new-instance p1, Lio/realm/RealmMap$ManagedMapStrategy;

    invoke-direct {p1, p0}, Lio/realm/RealmMap$ManagedMapStrategy;-><init>(Lio/realm/ManagedMapManager;)V

    return-object p1
.end method

.method private toMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-virtual {p0}, Lio/realm/RealmDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
