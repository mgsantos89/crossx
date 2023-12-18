.class Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;
.super Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.source "HttpStrictMultipart.java"


# instance fields
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    .line 68
    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;->parts:Ljava/util/List;

    return-object v0
.end method
