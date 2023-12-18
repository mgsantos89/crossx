.class public Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# instance fields
.field private exceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    return-void
.end method

.method private isForPublicSuffix(Lcz/msebera/android/httpclient/cookie/Cookie;)Z
    .locals 5

    .line 97
    invoke-interface {p1}, Lcz/msebera/android/httpclient/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_0
    invoke-static {p1}, Lcz/msebera/android/httpclient/client/utils/Punycode;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 111
    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    if-nez v0, :cond_2

    return v2

    .line 116
    :cond_2
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "*."

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    const/16 v0, 0x2e

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    goto :goto_0

    .line 127
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return v2
.end method


# virtual methods
.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lcz/msebera/android/httpclient/cookie/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z

    move-result p1

    return p1
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Set;

    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Set;

    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/PublicSuffixFilter;->wrapped:Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;->validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V

    return-void
.end method
