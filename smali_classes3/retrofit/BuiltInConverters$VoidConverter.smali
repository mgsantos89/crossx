.class final Lretrofit/BuiltInConverters$VoidConverter;
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
    name = "VoidConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Converter<",
        "Lcom/squareup/okhttp/ResponseBody;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    check-cast p1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit/BuiltInConverters$VoidConverter;->convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->close()V

    const/4 p1, 0x0

    return-object p1
.end method
