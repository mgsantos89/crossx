.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;
.super Ljava/lang/Object;
.source "BestMatchSpec.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpec;


# instance fields
.field private compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

.field private final oneHeader:Z

.field private strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    return-void
.end method

.method private getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;
    .locals 2

    .line 88
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    .line 91
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->compat:Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    return-object v0
.end method

.method private getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;
    .locals 3

    .line 81
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    .line 84
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->obsoleteStrict:Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    return-object v0
.end method

.method private getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;
    .locals 3

    .line 74
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->datepatterns:[Ljava/lang/String;

    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->oneHeader:Z

    invoke-direct {v0, v1, v2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    .line 77
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->strict:Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    return-object v0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    .line 172
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcz/msebera/android/httpclient/cookie/Cookie;

    .line 176
    instance-of v4, v3, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 179
    :cond_1
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 180
    invoke-interface {v3}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_4

    if-eqz v2, :cond_3

    .line 185
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 187
    :cond_3
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 190
    :cond_4
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 195
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersion()I

    move-result v0

    return v0
.end method

.method public getVersionHeader()Lcz/msebera/android/httpclient/Header;
    .locals 1

    .line 199
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->getVersionHeader()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1

    const-string v0, "Cookie"

    .line 158
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 159
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    .line 164
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result p1

    return p1

    .line 167
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result p1

    return p1
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

    .line 97
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 98
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    .line 102
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

    .line 103
    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    move v5, v6

    :cond_0
    const-string v8, "expires"

    .line 106
    invoke-interface {v7, v8}, Lcz/msebera/android/httpclient/HeaderElement;->getParameterByName(Ljava/lang/String;)Lcz/msebera/android/httpclient/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "Set-Cookie2"

    .line 133
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 134
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 136
    :cond_4
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 113
    :cond_5
    :goto_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;

    .line 116
    instance-of v1, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v1, :cond_6

    .line 117
    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v1

    .line 118
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    .line 119
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result p1

    .line 120
    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    goto :goto_2

    .line 122
    :cond_6
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 126
    new-instance v1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 127
    invoke-virtual {v1, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 128
    new-instance v3, Lcz/msebera/android/httpclient/message/ParserCursor;

    invoke-virtual {v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lcz/msebera/android/httpclient/message/ParserCursor;-><init>(II)V

    :goto_2
    new-array p1, v6, [Lcz/msebera/android/httpclient/HeaderElement;

    .line 130
    invoke-virtual {v0, v1, v3}, Lcz/msebera/android/httpclient/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lcz/msebera/android/httpclient/util/CharArrayBuffer;Lcz/msebera/android/httpclient/message/ParserCursor;)Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    .line 131
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->parse([Lcz/msebera/android/httpclient/HeaderElement;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 124
    :cond_7
    new-instance p1, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lcz/msebera/android/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "best-match"

    return-object v0
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Cookie"

    .line 144
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 145
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getVersion()I

    move-result v0

    if-lez v0, :cond_1

    .line 147
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2965Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getObsoleteStrict()Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/RFC2109Spec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-direct {p0}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;->getCompat()Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/impl/cookie/BrowserCompatSpec;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    :goto_0
    return-void
.end method
