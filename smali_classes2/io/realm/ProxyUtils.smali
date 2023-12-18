.class Lio/realm/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyOrUpdate(Lio/realm/RealmAny;Lio/realm/Realm;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmAny;
    .locals 7
    .param p1    # Lio/realm/Realm;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmAny;",
            "Lio/realm/Realm;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/ImportFlag;",
            ">;)",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 440
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_2

    .line 444
    invoke-virtual {p0}, Lio/realm/RealmAny;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    .line 445
    invoke-virtual {p0, v0}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v3

    .line 447
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz p0, :cond_1

    .line 449
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p0

    .line 453
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 454
    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/RealmProxyMediator;->copyOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmModel;

    move-result-object p0

    .line 456
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method static copyToRealmIfNeeded(Lio/realm/ProxyState;Lio/realm/RealmAny;)Lio/realm/RealmAny;
    .locals 4
    .param p1    # Lio/realm/RealmAny;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/ProxyState<",
            "TT;>;",
            "Lio/realm/RealmAny;",
            ")",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    check-cast v0, Lio/realm/Realm;

    if-nez p1, :cond_0

    .line 413
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 416
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v1

    sget-object v2, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne v1, v2, :cond_4

    .line 417
    const-class v1, Lio/realm/RealmModel;

    invoke-virtual {p1, v1}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Lio/realm/Realm;->getSchema()Lio/realm/RealmSchema;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/RealmSchema;->getSchemaForClass(Ljava/lang/Class;)Lio/realm/RealmObjectSchema;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmObjectSchema;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 423
    invoke-static {v1}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 424
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/Realm;->hasPrimaryKey(Ljava/lang/Class;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    new-array p0, p1, [Lio/realm/ImportFlag;

    .line 425
    invoke-virtual {v0, v1, p0}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p0, p1, [Lio/realm/ImportFlag;

    .line 427
    invoke-virtual {v0, v1, p0}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;[Lio/realm/ImportFlag;)Lio/realm/RealmModel;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0, v1}, Lio/realm/ProxyState;->checkValidObject(Lio/realm/RealmModel;)V

    goto :goto_0

    .line 420
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Embedded objects are not supported by RealmAny."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method static createDetachedCopy(Lio/realm/RealmAny;Lio/realm/Realm;IILjava/util/Map;)Lio/realm/RealmAny;
    .locals 1
    .param p1    # Lio/realm/Realm;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmAny;",
            "Lio/realm/Realm;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    if-gt p2, p3, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object p2

    sget-object v0, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne p2, v0, :cond_1

    .line 522
    invoke-virtual {p0}, Lio/realm/RealmAny;->getValueClass()Ljava/lang/Class;

    move-result-object p2

    .line 523
    invoke-virtual {p0, p2}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p0

    .line 525
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p1

    add-int/lit8 p3, p3, -0x1

    .line 527
    invoke-virtual {p1, p0, p3, p4}, Lio/realm/internal/RealmProxyMediator;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object p0

    .line 529
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    :cond_1
    return-object p0

    .line 518
    :cond_2
    :goto_0
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0
.end method

.method static createOrUpdateUsingJsonObject(Lio/realm/RealmAny;Lio/realm/Realm;IILjava/util/Map;)Lio/realm/RealmAny;
    .locals 1
    .param p1    # Lio/realm/Realm;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmAny;",
            "Lio/realm/Realm;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Lio/realm/internal/RealmObjectProxy$CacheData<",
            "Lio/realm/RealmModel;",
            ">;>;)",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    if-gt p2, p3, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object p2

    sget-object v0, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne p2, v0, :cond_1

    .line 542
    invoke-virtual {p0}, Lio/realm/RealmAny;->getValueClass()Ljava/lang/Class;

    move-result-object p2

    .line 543
    invoke-virtual {p0, p2}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p0

    .line 545
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object p1

    .line 546
    invoke-virtual {p1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object p1

    add-int/lit8 p3, p3, -0x1

    .line 547
    invoke-virtual {p1, p0, p3, p4}, Lio/realm/internal/RealmProxyMediator;->createDetachedCopy(Lio/realm/RealmModel;ILjava/util/Map;)Lio/realm/RealmModel;

    move-result-object p0

    .line 549
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    :cond_1
    return-object p0

    .line 538
    :cond_2
    :goto_0
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0
.end method

.method static createRealmListWithJsonStream(Ljava/lang/Class;Landroid/util/JsonReader;)Lio/realm/RealmList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Landroid/util/JsonReader;",
            ")",
            "Lio/realm/RealmList<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    return-object v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 236
    new-instance v0, Lio/realm/RealmList;

    invoke-direct {v0}, Lio/realm/RealmList;-><init>()V

    .line 238
    const-class v2, Ljava/lang/Boolean;

    if-ne p0, v2, :cond_2

    .line 239
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 240
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 242
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    const-class v2, Ljava/lang/Float;

    if-ne p0, v2, :cond_4

    .line 248
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 249
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_3

    .line 250
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 251
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_4
    const-class v2, Ljava/lang/Double;

    if-ne p0, v2, :cond_6

    .line 257
    :goto_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 258
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_5

    .line 259
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 260
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 262
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    :cond_6
    const-class v2, Ljava/lang/String;

    if-ne p0, v2, :cond_8

    .line 266
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 267
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_7

    .line 268
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 269
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 271
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 274
    :cond_8
    const-class v2, [B

    if-ne p0, v2, :cond_a

    .line 275
    :goto_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 276
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_9

    .line 277
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 278
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 280
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/internal/android/JsonUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 283
    :cond_a
    const-class v2, Ljava/util/Date;

    if-ne p0, v2, :cond_d

    .line 284
    :goto_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 285
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    .line 286
    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_b

    .line 287
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 288
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 289
    :cond_b
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_c

    .line 290
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 292
    :cond_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 295
    :cond_d
    const-class v2, Ljava/lang/Long;

    if-ne p0, v2, :cond_f

    .line 296
    :goto_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 297
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_e

    .line 298
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 299
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 301
    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 304
    :cond_f
    const-class v2, Ljava/lang/Integer;

    if-ne p0, v2, :cond_11

    .line 305
    :goto_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 306
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_10

    .line 307
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 308
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 310
    :cond_10
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 313
    :cond_11
    const-class v2, Ljava/lang/Short;

    if-ne p0, v2, :cond_13

    .line 314
    :goto_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 315
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_12

    .line 316
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 317
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 319
    :cond_12
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 322
    :cond_13
    const-class v2, Ljava/lang/Byte;

    if-ne p0, v2, :cond_15

    .line 323
    :goto_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 324
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_14

    .line 325
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 326
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 328
    :cond_14
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-byte p0, p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 331
    :cond_15
    const-class v2, Lorg/bson/types/ObjectId;

    if-ne p0, v2, :cond_17

    .line 332
    :goto_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 333
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_16

    .line 334
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 335
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 337
    :cond_16
    new-instance p0, Lorg/bson/types/ObjectId;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 340
    :cond_17
    const-class v2, Lorg/bson/types/Decimal128;

    if-ne p0, v2, :cond_19

    .line 341
    :goto_b
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 342
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_18

    .line 343
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 344
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 346
    :cond_18
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 349
    :cond_19
    const-class v2, Ljava/util/UUID;

    if-ne p0, v2, :cond_1b

    .line 350
    :goto_c
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 351
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_1a

    .line 352
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 353
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 355
    :cond_1a
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 358
    :cond_1b
    const-class v2, Lio/realm/RealmAny;

    if-ne p0, v2, :cond_21

    .line 359
    :cond_1c
    :goto_d
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 360
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_1d

    .line 361
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 362
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 363
    :cond_1d
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_1e

    .line 364
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 365
    :cond_1e
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_20

    .line 366
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    .line 367
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 368
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 370
    :cond_1f
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 372
    :cond_20
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_1c

    .line 373
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 376
    :cond_21
    const-class v2, Lorg/bson/types/ObjectId;

    if-ne p0, v2, :cond_23

    .line 377
    :goto_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 378
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_22

    .line 379
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 380
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 382
    :cond_22
    new-instance p0, Lorg/bson/types/ObjectId;

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 385
    :cond_23
    const-class v2, Lorg/bson/types/Decimal128;

    if-ne p0, v2, :cond_25

    .line 386
    :goto_f
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 387
    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v2, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne p0, v2, :cond_24

    .line 388
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 389
    invoke-virtual {v0, v1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 391
    :cond_24
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 395
    :cond_25
    invoke-static {p0}, Lio/realm/ProxyUtils;->throwWrongElementType(Ljava/lang/Class;)V

    .line 398
    :cond_26
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method static insert(Lio/realm/RealmAny;Lio/realm/Realm;Ljava/util/Map;)Lio/realm/RealmAny;
    .locals 3
    .param p1    # Lio/realm/Realm;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmAny;",
            "Lio/realm/Realm;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 466
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 469
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_2

    .line 470
    invoke-virtual {p0}, Lio/realm/RealmAny;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p0

    .line 473
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 475
    invoke-static {v1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p0

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    .line 479
    invoke-virtual {v1, p1, p0, p2}, Lio/realm/internal/RealmProxyMediator;->insert(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J

    move-result-wide v1

    const/4 p0, 0x0

    .line 481
    invoke-virtual {p1, v0, p0, v1, v2}, Lio/realm/Realm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p0

    .line 483
    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method static insertOrUpdate(Lio/realm/RealmAny;Lio/realm/Realm;Ljava/util/Map;)Lio/realm/RealmAny;
    .locals 3
    .param p1    # Lio/realm/Realm;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmAny;",
            "Lio/realm/Realm;",
            "Ljava/util/Map<",
            "Lio/realm/RealmModel;",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/realm/RealmAny;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 493
    invoke-static {}, Lio/realm/RealmAny;->nullValue()Lio/realm/RealmAny;

    move-result-object p0

    return-object p0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lio/realm/RealmAny;->getType()Lio/realm/RealmAny$Type;

    move-result-object v0

    sget-object v1, Lio/realm/RealmAny$Type;->OBJECT:Lio/realm/RealmAny$Type;

    if-ne v0, v1, :cond_2

    .line 497
    invoke-virtual {p0}, Lio/realm/RealmAny;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    .line 498
    invoke-virtual {p0, v0}, Lio/realm/RealmAny;->asRealmModel(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object p0

    .line 500
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 502
    invoke-static {v1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p0

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    .line 505
    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getSchemaMediator()Lio/realm/internal/RealmProxyMediator;

    move-result-object v1

    .line 506
    invoke-virtual {v1, p1, p0, p2}, Lio/realm/internal/RealmProxyMediator;->insertOrUpdate(Lio/realm/Realm;Lio/realm/RealmModel;Ljava/util/Map;)J

    move-result-wide v1

    const/4 p0, 0x0

    .line 508
    invoke-virtual {p1, v0, p0, v1, v2}, Lio/realm/Realm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object p0

    invoke-static {p0}, Lio/realm/RealmAny;->valueOf(Lio/realm/RealmModel;)Lio/realm/RealmAny;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method static setRealmListWithJsonObject(Lio/realm/Realm;Lio/realm/RealmList;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/realm/Realm;",
            "Lio/realm/RealmList<",
            "TE;>;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 59
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lio/realm/RealmList;->getOsList()Lio/realm/internal/OsList;

    move-result-object v0

    .line 64
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    return-void

    .line 69
    :cond_1
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 70
    invoke-virtual {v0}, Lio/realm/internal/OsList;->removeAll()V

    .line 71
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p3

    .line 73
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    :goto_0
    if-ge v3, p3, :cond_27

    .line 75
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 76
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addBoolean(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_5

    :goto_2
    if-ge v3, p3, :cond_27

    .line 83
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 84
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addFloat(F)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 89
    :cond_5
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_7

    :goto_4
    if-ge v3, p3, :cond_27

    .line 91
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 92
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_5

    .line 94
    :cond_6
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->addDouble(D)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 97
    :cond_7
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_9

    :goto_6
    if-ge v3, p3, :cond_27

    .line 99
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 100
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_7

    .line 102
    :cond_8
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addString(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 105
    :cond_9
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, [B

    if-ne v1, v2, :cond_b

    :goto_8
    if-ge v3, p3, :cond_27

    .line 107
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 108
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_9

    .line 110
    :cond_a
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/realm/internal/android/JsonUtils;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addBinary([B)V

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 113
    :cond_b
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-ne v1, v2, :cond_e

    :goto_a
    if-ge v3, p3, :cond_27

    .line 115
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 116
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_b

    .line 120
    :cond_c
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 121
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_d

    .line 122
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lio/realm/internal/android/JsonUtils;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addDate(Ljava/util/Date;)V

    goto :goto_b

    .line 124
    :cond_d
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addDate(Ljava/util/Date;)V

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 127
    :cond_e
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Lorg/bson/types/ObjectId;

    if-ne v1, v2, :cond_11

    :goto_c
    if-ge v3, p3, :cond_27

    .line 129
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 130
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_d

    .line 134
    :cond_f
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 135
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_10

    .line 136
    new-instance p1, Lorg/bson/types/ObjectId;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lorg/bson/types/ObjectId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->addObjectId(Lorg/bson/types/ObjectId;)V

    goto :goto_d

    .line 138
    :cond_10
    check-cast p0, Lorg/bson/types/ObjectId;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addObjectId(Lorg/bson/types/ObjectId;)V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 141
    :cond_11
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Lorg/bson/types/Decimal128;

    if-ne v1, v2, :cond_18

    :goto_e
    if-ge v3, p3, :cond_27

    .line 143
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 144
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_f

    .line 148
    :cond_12
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 150
    instance-of p1, p0, Lorg/bson/types/Decimal128;

    if-eqz p1, :cond_13

    .line 151
    check-cast p0, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    goto :goto_f

    .line 152
    :cond_13
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 153
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/bson/types/Decimal128;->parse(Ljava/lang/String;)Lorg/bson/types/Decimal128;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    goto :goto_f

    .line 154
    :cond_14
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_15

    .line 155
    new-instance p1, Lorg/bson/types/Decimal128;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-direct {p1, v1, v2}, Lorg/bson/types/Decimal128;-><init>(J)V

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    goto :goto_f

    .line 156
    :cond_15
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_16

    .line 157
    new-instance p1, Lorg/bson/types/Decimal128;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lorg/bson/types/Decimal128;-><init>(J)V

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    goto :goto_f

    .line 158
    :cond_16
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_17

    .line 159
    new-instance p1, Lorg/bson/types/Decimal128;

    new-instance p4, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p4, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-direct {p1, p4}, Lorg/bson/types/Decimal128;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {v0, p1}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    goto :goto_f

    .line 161
    :cond_17
    check-cast p0, Lorg/bson/types/Decimal128;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addDecimal128(Lorg/bson/types/Decimal128;)V

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 164
    :cond_18
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    if-ne v1, v2, :cond_1b

    :goto_10
    if-ge v3, p3, :cond_27

    .line 166
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 167
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_11

    .line 171
    :cond_19
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 172
    instance-of p1, p0, Ljava/util/UUID;

    if-eqz p1, :cond_1a

    .line 173
    check-cast p0, Ljava/util/UUID;

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addUUID(Ljava/util/UUID;)V

    goto :goto_11

    .line 175
    :cond_1a
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/realm/internal/OsList;->addUUID(Ljava/util/UUID;)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 178
    :cond_1b
    iget-object v1, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class v2, Lio/realm/RealmAny;

    if-ne v1, v2, :cond_23

    :goto_12
    if-ge v3, p3, :cond_27

    .line 180
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 181
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_14

    .line 185
    :cond_1c
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 187
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 188
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/String;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_13

    .line 189
    :cond_1d
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    .line 190
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Integer;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_13

    .line 191
    :cond_1e
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1f

    .line 192
    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Long;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_13

    .line 193
    :cond_1f
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_20

    .line 194
    check-cast p1, Ljava/lang/Double;

    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Double;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_13

    .line 195
    :cond_20
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_21

    .line 196
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lio/realm/RealmAny;->valueOf(Ljava/lang/Boolean;)Lio/realm/RealmAny;

    move-result-object p1

    goto :goto_13

    .line 197
    :cond_21
    instance-of v1, p1, Lio/realm/RealmAny;

    if-eqz v1, :cond_22

    .line 198
    check-cast p1, Lio/realm/RealmAny;

    .line 199
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, p0, p4, v1, v2}, Lio/realm/ProxyUtils;->copyOrUpdate(Lio/realm/RealmAny;Lio/realm/Realm;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/RealmAny;

    move-result-object p1

    .line 203
    :goto_13
    invoke-virtual {p1}, Lio/realm/RealmAny;->getNativePtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->addRealmAny(J)V

    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 201
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unsupported JSON type: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_23
    iget-object p0, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class p4, Ljava/lang/Long;

    if-eq p0, p4, :cond_25

    iget-object p0, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class p4, Ljava/lang/Integer;

    if-eq p0, p4, :cond_25

    iget-object p0, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class p4, Ljava/lang/Short;

    if-eq p0, p4, :cond_25

    iget-object p0, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    const-class p4, Ljava/lang/Byte;

    if-ne p0, p4, :cond_24

    goto :goto_15

    .line 215
    :cond_24
    iget-object p0, p1, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-static {p0}, Lio/realm/ProxyUtils;->throwWrongElementType(Ljava/lang/Class;)V

    goto :goto_17

    :cond_25
    :goto_15
    if-ge v3, p3, :cond_27

    .line 208
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 209
    invoke-virtual {v0}, Lio/realm/internal/OsList;->addNull()V

    goto :goto_16

    .line 211
    :cond_26
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/OsList;->addLong(J)V

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_27
    :goto_17
    return-void
.end method

.method private static throwWrongElementType(Ljava/lang/Class;)V
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Element type \'%s\' is not handled."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
