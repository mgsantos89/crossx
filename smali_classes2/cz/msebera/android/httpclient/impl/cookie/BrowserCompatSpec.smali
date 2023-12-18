.class public Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
.super Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v1, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    const-string v3, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v4, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    const-string v6, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v7, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v8, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v9, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v10, "EEE dd MMM yy HH:mm:ss z"

    const-string v11, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v13, "EEE, dd-MM-yyyy HH:mm:ss z"

    .line 68
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 123
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/CookieSpecBase;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    .line 95
    :goto_0
    sget-object p1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$2;->$SwitchMap$cz$msebera$android$httpclient$impl$cookie$BrowserCompatSpecFactory$SecurityLevel:[I

    invoke-virtual {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const-string v0, "path"

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 100
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;

    invoke-direct {p1, p0}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec$1;-><init>(Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;)V

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown security level"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicPathHandler;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 112
    :goto_1
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicDomainHandler;-><init>()V

    const-string p2, "domain"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 113
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const-string p2, "max-age"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 114
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicSecureHandler;-><init>()V

    const-string p2, "secure"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 115
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BasicCommentHandler;-><init>()V

    const-string p2, "comment"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 116
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;

    iget-object p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const-string p2, "expires"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    .line 118
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    const-string/jumbo p2, "version"

    invoke-virtual {p0, p2, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->registerAttribHandler(Ljava/lang/String;Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V

    return-void
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "\""

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/Header;",
            ">;"
        }
    .end annotation

    const-string v0, "List of cookies"

    .line 207
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 208
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    const-string v1, "Cookie"

    .line 209
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, ": "

    .line 210
    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 211
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 212
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/cookie/Cookie;

    if-lez v2, :cond_0

    const-string v4, "; "

    .line 214
    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v5}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    sget-object v3, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->INSTANCE:Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;

    new-instance v6, Lcz/msebera/android/httpclient/message/BasicHeaderElement;

    invoke-direct {v6, v4, v5}, Lcz/msebera/android/httpclient/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6, v1}, Lcz/msebera/android/httpclient/message/BasicHeaderValueFormatter;->formatHeaderElement(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/HeaderElement;Z)Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    goto :goto_1

    .line 225
    :cond_1
    invoke-virtual {v0, v4}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v3, "="

    .line 226
    invoke-virtual {v0, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 228
    invoke-virtual {v0, v5}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    new-instance v1, Lcz/msebera/android/httpclient/message/BufferedHeader;

    invoke-direct {v1, v0}, Lcz/msebera/android/httpclient/message/BufferedHeader;-><init>(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lcz/msebera/android/httpclient/Header;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcz/msebera/android/httpclient/Header;",
            "Lcz/msebera/android/httpclient/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Header"

    .line 133
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 134
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 140
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 143
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    const-string/jumbo v8, "version"

    .line 144
    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    move v5, v6

    :cond_0
    const-string v8, "expires"

    .line 147
    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 154
    :cond_4
    :goto_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 157
    instance-of v1, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v1, :cond_5

    .line 158
    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 159
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 160
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result p1

    .line 161
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v3, p1, v5}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_2

    .line 163
    :cond_5
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 167
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 168
    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 169
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    .line 171
    :goto_2
    invoke-virtual {v0, v1, v3}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    .line 174
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 177
    new-instance v3, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;

    invoke-direct {v3, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->getDefaultPath(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 179
    invoke-static {p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->getDefaultDomain(Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 182
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HeaderElement;->getParameters()[Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object p1

    .line 183
    array-length p2, p1

    sub-int/2addr p2, v6

    :goto_3
    if-ltz p2, :cond_7

    .line 184
    aget-object v0, p1, p2

    .line 185
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->findAttribHandler(Ljava/lang/String;)Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 189
    invoke-interface {v0}, Lcz/msebera/android/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 194
    invoke-virtual {v3, v2}, Lcz/msebera/android/httpclient/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 196
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 175
    :cond_9
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Cookie name may not be empty"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_a
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_b
    new-instance p2, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized cookie header \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "compatibility"

    return-object v0
.end method
