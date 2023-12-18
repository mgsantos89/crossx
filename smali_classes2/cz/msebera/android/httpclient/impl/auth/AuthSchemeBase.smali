.class public abstract Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;
.super Ljava/lang/Object;
.source "AuthSchemeBase.java"

# interfaces
.implements Lcz/msebera/android/httpclient/auth/ContextAwareAuthScheme;


# instance fields
.field private challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/ChallengeState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    return-void
.end method


# virtual methods
.method public authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/Header;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->authenticate(Lcz/msebera/android/httpclient/auth/Credentials;Lcz/msebera/android/httpclient/HttpRequest;)Lcz/msebera/android/httpclient/Header;

    move-result-object p1

    return-object p1
.end method

.method public getChallengeState()Lcz/msebera/android/httpclient/auth/ChallengeState;
    .locals 1

    .line 156
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    return-object v0
.end method

.method public isProxy()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-eqz v0, :cond_0

    sget-object v1, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation
.end method

.method public processChallenge(Lcz/msebera/android/httpclient/Header;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/auth/MalformedChallengeException;
        }
    .end annotation

    const-string v0, "Header"

    .line 90
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v0, Lcz/msebera/android/httpclient/auth/ChallengeState;->TARGET:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    goto :goto_0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    sget-object v0, Lcz/msebera/android/httpclient/auth/ChallengeState;->PROXY:Lcz/msebera/android/httpclient/auth/ChallengeState;

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->challengeState:Lcz/msebera/android/httpclient/auth/ChallengeState;

    .line 102
    :goto_0
    instance-of v0, p1, Lcz/msebera/android/httpclient/FormattedHeader;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Lcz/msebera/android/httpclient/FormattedHeader;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getBuffer()Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    move-result-object v0

    .line 104
    invoke-interface {p1}, Lcz/msebera/android/httpclient/FormattedHeader;->getValuePos()I

    move-result p1

    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 110
    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    .line 111
    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 114
    :goto_1
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move v1, p1

    .line 118
    :goto_2
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcz/msebera/android/httpclient/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_3
    invoke-virtual {v0, p1, v1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->parseChallenge(Lcz/msebera/android/httpclient/util/CharArrayBuffer;II)V

    return-void

    .line 124
    :cond_4
    new-instance v0, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid scheme identifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_5
    new-instance p1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    const-string v0, "Header value is null"

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_6
    new-instance p1, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/auth/AuthSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
