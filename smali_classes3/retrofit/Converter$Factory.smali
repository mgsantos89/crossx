.class public abstract Lretrofit/Converter$Factory;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter<",
            "*",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
