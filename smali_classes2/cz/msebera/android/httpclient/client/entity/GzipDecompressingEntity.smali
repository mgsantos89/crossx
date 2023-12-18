.class public Lcz/msebera/android/httpclient/client/entity/GzipDecompressingEntity;
.super Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;
.source "GzipDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;-><init>(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcz/msebera/android/httpclient/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
