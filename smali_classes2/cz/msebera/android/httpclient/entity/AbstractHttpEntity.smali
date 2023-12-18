.class public abstract Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;
.super Ljava/lang/Object;
.source "AbstractHttpEntity.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# static fields
.field protected static final OUTPUT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected chunked:Z

.field protected contentEncoding:Lcz/msebera/android/httpclient/Header;

.field protected contentType:Lcz/msebera/android/httpclient/Header;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 77
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->chunked:Z

    return v0
.end method

.method public setChunked(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->chunked:Z

    return-void
.end method

.method public setContentEncoding(Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Content-Encoding"

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public setContentType(Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lcz/msebera/android/httpclient/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    const/16 v2, 0x2c

    if-eqz v1, :cond_0

    const-string v1, "Content-Type: "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentType:Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding: "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->contentEncoding:Lcz/msebera/android/httpclient/Header;

    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    const-string v1, "Content-Length: "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Chunked: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/entity/AbstractHttpEntity;->chunked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
