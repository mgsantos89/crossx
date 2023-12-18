.class public Lcz/msebera/android/httpclient/client/protocol/ResponseContentEncoding;
.super Ljava/lang/Object;
.source "ResponseContentEncoding.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpResponseInterceptor;


# static fields
.field public static final UNCOMPRESSED:Ljava/lang/String; = "http.client.response.uncompressed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcz/msebera/android/httpclient/HttpResponse;Lcz/msebera/android/httpclient/protocol/HttpContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 78
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 79
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 81
    invoke-interface {p2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p2

    .line 83
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_4

    aget-object p2, p2, v1

    .line 84
    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    const-string/jumbo v1, "x-gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "deflate"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance p2, Lcz/msebera/android/httpclient/client/entity/DeflateDecompressingEntity;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcz/msebera/android/httpclient/client/entity/DeflateDecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    goto :goto_1

    :cond_1
    const-string p1, "identity"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 98
    :cond_2
    new-instance p1, Lcz/msebera/android/httpclient/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported Content-Coding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_3
    :goto_0
    new-instance p2, Lcz/msebera/android/httpclient/client/entity/GzipDecompressingEntity;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcz/msebera/android/httpclient/client/entity/GzipDecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :goto_1
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    const-string p2, "Content-Length"

    .line 102
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string p2, "Content-Encoding"

    .line 103
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    const-string p2, "Content-MD5"

    .line 104
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
