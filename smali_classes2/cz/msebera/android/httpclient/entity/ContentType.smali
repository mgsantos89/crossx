.class public final Lcz/msebera/android/httpclient/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final APPLICATION_ATOM_XML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_JSON:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_SVG_XML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_XHTML_XML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final APPLICATION_XML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final MULTIPART_FORM_DATA:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final TEXT_HTML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final TEXT_PLAIN:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final TEXT_XML:Lcz/msebera/android/httpclient/entity/ContentType;

.field public static final WILDCARD:Lcz/msebera/android/httpclient/entity/ContentType;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;

.field private final params:[Lcz/msebera/android/httpclient/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "application/atom+xml"

    .line 64
    sget-object v1, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_ATOM_XML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v0, "application/x-www-form-urlencoded"

    .line 66
    sget-object v1, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v0, "application/json"

    .line 68
    sget-object v1, Lcz/msebera/android/httpclient/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_JSON:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v0, 0x0

    .line 70
    move-object v1, v0

    check-cast v1, Ljava/nio/charset/Charset;

    const-string v1, "application/octet-stream"

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_OCTET_STREAM:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v2, "application/svg+xml"

    .line 72
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_SVG_XML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v2, "application/xhtml+xml"

    .line 74
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_XHTML_XML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v2, "application/xml"

    .line 76
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->APPLICATION_XML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v2, "multipart/form-data"

    .line 78
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->MULTIPART_FORM_DATA:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string/jumbo v2, "text/html"

    .line 80
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->TEXT_HTML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string/jumbo v2, "text/plain"

    .line 82
    sget-object v3, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v2

    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->TEXT_PLAIN:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string/jumbo v3, "text/xml"

    .line 84
    sget-object v4, Lcz/msebera/android/httpclient/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v3

    sput-object v3, Lcz/msebera/android/httpclient/entity/ContentType;->TEXT_XML:Lcz/msebera/android/httpclient/entity/ContentType;

    const-string v3, "*/*"

    .line 86
    invoke-static {v3, v0}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->WILDCARD:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 90
    sput-object v2, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    .line 91
    sput-object v1, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->params:[Lcz/msebera/android/httpclient/NameValuePair;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/ContentType;->params:[Lcz/msebera/android/httpclient/NameValuePair;

    const-string p1, "charset"

    .line 110
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static create(Lcz/msebera/android/httpclient/HeaderElement;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 3

    .line 208
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HeaderElement;->getParameters()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p0

    .line 210
    new-instance v1, Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, v0, p0}, Lcz/msebera/android/httpclient/entity/ContentType;-><init>(Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 3

    .line 188
    new-instance v0, Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Lcz/msebera/android/httpclient/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 2

    const-string v0, "MIME type"

    .line 175
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->valid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/Args;->check(ZLjava/lang/String;)V

    .line 177
    new-instance v0, Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-direct {v0, p0, p1}, Lcz/msebera/android/httpclient/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 256
    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p0

    .line 257
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 258
    aget-object p0, p0, v0

    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Lcz/msebera/android/httpclient/HeaderElement;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getOrDefault(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->get(Lcz/msebera/android/httpclient/HttpEntity;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    sget-object p0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "Content type"

    .line 225
    invoke-static {p0, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 227
    invoke-virtual {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 229
    sget-object v2, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    invoke-virtual {v2, v0, v1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 230
    array-length v1, v0

    if-lez v1, :cond_0

    .line 231
    aget-object p0, v0, v3

    invoke-static {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Lcz/msebera/android/httpclient/HeaderElement;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Lcz/msebera/android/httpclient/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 157
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 119
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Parameter name"

    .line 126
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/ContentType;->params:[Lcz/msebera/android/httpclient/NameValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 131
    invoke-interface {v4}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    invoke-interface {v4}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 144
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 145
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->params:[Lcz/msebera/android/httpclient/NameValuePair;

    if-eqz v1, :cond_0

    const-string v1, "; "

    .line 147
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/ContentType;->params:[Lcz/msebera/android/httpclient/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatParameters(Lcz/msebera/android/httpclient/util/CharArrayBuffer;[Lcz/msebera/android/httpclient/NameValuePair;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    .line 150
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCharset(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p1

    return-object p1
.end method
