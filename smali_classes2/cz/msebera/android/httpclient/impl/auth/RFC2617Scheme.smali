.class public abstract Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;
.super Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.source "RFC2617Scheme.java"


# instance fields
.field private final credentialsCharset:Ljava/nio/charset/Charset;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    sget-object v0, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    .line 72
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/Consts;->ASCII:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method getCredentialsCharset(Lcz/msebera/android/httpclient/HttpRequest;)Ljava/lang/String;
    .locals 1

    .line 97
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getParams()Lcz/msebera/android/httpclient/params/HttpParams;

    move-result-object p1

    const-string v0, "http.auth.credential-charset"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->getCredentialsCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCredentialsCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->credentialsCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 139
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    .line 148
    invoke-virtual {p0, v0}, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    .line 107
    sget-object p3, Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueParser;

    .line 108
    new-instance v0, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 109
    invoke-interface {p3, p1, v0}, Lcz/msebera/android/httpclient/message/HeaderValueParser;->parseElements(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p1

    .line 110
    array-length p2, p1

    if-eqz p2, :cond_1

    .line 113
    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 114
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object v0, p1, p3

    .line 115
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/auth/RFC2617Scheme;->params:Ljava/util/Map;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 111
    :cond_1
    new-instance p1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string p2, "Authentication challenge is empty"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
