.class Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;
.super Ljava/lang/Object;
.source "RequestEntityProxy.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field private consumed:Z

.field private final original:Lcz/msebera/android/httpclient/HttpEntity;


# direct methods
.method constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 79
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method

.method static enhance(Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;)V
    .locals 2

    .line 48
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    invoke-interface {p0, v1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    :cond_0
    return-void
.end method

.method static isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z
    .locals 0

    .line 55
    instance-of p0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    return p0
.end method

.method static isRepeatable(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2

    .line 59
    instance-of v0, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 60
    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 62
    invoke-static {p0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isEnhanced(Lcz/msebera/android/httpclient/HttpEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;

    .line 64
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 126
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 107
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 103
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    .line 83
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 116
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/execchain/RequestEntityProxy;->original:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
