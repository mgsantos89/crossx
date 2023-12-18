.class public Lcz/msebera/android/httpclient/impl/client/BasicResponseHandler;
.super Ljava/lang/Object;
.source "BasicResponseHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcz/msebera/android/httpclient/client/ResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/BasicResponseHandler;->handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lcz/msebera/android/httpclient/HttpResponse;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p1

    .line 65
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->toString(Lcz/msebera/android/httpclient/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 66
    :cond_1
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/EntityUtils;->consume(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 67
    new-instance p1, Lcz/msebera/android/httpclient/client/HttpResponseException;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v1

    .line 68
    invoke-interface {v0}, Lcz/msebera/android/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcz/msebera/android/httpclient/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
