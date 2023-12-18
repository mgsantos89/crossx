.class final Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;
.super Ljava/lang/Object;
.source "ConventionSetPrivateFieldImpl.java"

# interfaces
.implements Lorg/bson/codecs/pojo/PropertyAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivatePropertyAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/bson/codecs/pojo/PropertyAccessor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bson/codecs/pojo/PropertyAccessorImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bson/codecs/pojo/PropertyAccessorImpl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bson/codecs/pojo/PropertyAccessorImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;->wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lorg/bson/codecs/configuration/CodecConfigurationException;

    .line 58
    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unable to make private field accessible \'%s\' in %s"

    .line 57
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lorg/bson/codecs/pojo/PropertyAccessorImpl;Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;-><init>(Lorg/bson/codecs/pojo/PropertyAccessorImpl;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;)TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;->wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    invoke-virtual {v0, p1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;TT;)V"
        }
    .end annotation

    .line 70
    :try_start_0
    iget-object v0, p0, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;->wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lorg/bson/codecs/configuration/CodecConfigurationException;

    iget-object v0, p0, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;->wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    .line 73
    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bson/codecs/pojo/PropertyMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor;->wrapped:Lorg/bson/codecs/pojo/PropertyAccessorImpl;

    invoke-virtual {v1}, Lorg/bson/codecs/pojo/PropertyAccessorImpl;->getPropertyMetadata()Lorg/bson/codecs/pojo/PropertyMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bson/codecs/pojo/PropertyMetadata;->getDeclaringClassName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Unable to set value for property \'%s\' in %s"

    .line 72
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bson/codecs/configuration/CodecConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
