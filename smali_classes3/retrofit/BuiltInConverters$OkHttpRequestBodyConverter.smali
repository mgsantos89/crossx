.class final Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lretrofit/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/BuiltInConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpRequestBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Converter<",
        "Lcom/squareup/okhttp/RequestBody;",
        "Lcom/squareup/okhttp/RequestBody;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/RequestBody;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    check-cast p1, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {p0, p1}, Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;->convert(Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/RequestBody;

    move-result-object p1

    return-object p1
.end method
