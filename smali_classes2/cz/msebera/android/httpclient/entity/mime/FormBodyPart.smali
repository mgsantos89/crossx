.class public Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

.field private final header:Lcz/msebera/android/httpclient/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    .line 51
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Body"

    .line 52
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    .line 55
    new-instance p1, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    .line 57
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    .line 58
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    .line 59
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Field name"

    .line 75
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    return-void
.end method

.method protected generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Disposition"

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 3

    .line 94
    instance-of v0, p1, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Content-Type"

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "; charset="

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 1

    const-string v0, "Content-Transfer-Encoding"

    .line 113
    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .locals 1

    .line 67
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;
    .locals 1

    .line 71
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
