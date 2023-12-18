.class final Lorg/bson/codecs/pojo/MapPropertyCodecProvider;
.super Ljava/lang/Object;
.source "MapPropertyCodecProvider.java"

# interfaces
.implements Lorg/bson/codecs/pojo/PropertyCodecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;Lorg/bson/codecs/pojo/PropertyCodecRegistry;)Lorg/bson/codecs/Codec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/bson/codecs/pojo/TypeWithTypeParameters<",
            "TT;>;",
            "Lorg/bson/codecs/pojo/PropertyCodecRegistry;",
            ")",
            "Lorg/bson/codecs/Codec<",
            "TT;>;"
        }
    .end annotation

    .line 37
    const-class v0, Ljava/util/Map;

    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 38
    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bson/codecs/pojo/TypeWithTypeParameters;

    invoke-interface {v0}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 44
    :try_start_0
    new-instance v1, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;

    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bson/codecs/pojo/TypeWithTypeParameters;

    invoke-interface {p2, v3}, Lorg/bson/codecs/pojo/PropertyCodecRegistry;->get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;)Lorg/bson/codecs/Codec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bson/codecs/pojo/MapPropertyCodecProvider$MapCodec;-><init>(Ljava/lang/Class;Lorg/bson/codecs/Codec;)V
    :try_end_0
    .catch Lorg/bson/codecs/configuration/CodecConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 46
    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bson/codecs/pojo/TypeWithTypeParameters;

    invoke-interface {p1}, Lorg/bson/codecs/pojo/TypeWithTypeParameters;->getType()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 48
    :try_start_1
    const-class p1, Ljava/util/Map;

    invoke-static {p1}, Lorg/bson/codecs/pojo/TypeData;->builder(Ljava/lang/Class;)Lorg/bson/codecs/pojo/TypeData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/TypeData$Builder;->build()Lorg/bson/codecs/pojo/TypeData;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bson/codecs/pojo/PropertyCodecRegistry;->get(Lorg/bson/codecs/pojo/TypeWithTypeParameters;)Lorg/bson/codecs/Codec;

    move-result-object p1
    :try_end_1
    .catch Lorg/bson/codecs/configuration/CodecConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 53
    :catch_1
    :cond_0
    throw v1

    .line 40
    :cond_1
    new-instance p1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    const-string p2, "Invalid Map type. Maps MUST have string keys, found %s instead."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
