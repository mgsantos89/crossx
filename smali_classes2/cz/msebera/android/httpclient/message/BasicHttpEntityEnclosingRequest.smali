.class public Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;
.super Lcz/msebera/android/httpclient/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;


# instance fields
.field private entity:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/RequestLine;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/ProtocolVersion;)V

    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    .line 71
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    .line 72
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEntity()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;->entity:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method
