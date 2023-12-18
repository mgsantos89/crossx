.class public final Lcz/msebera/android/httpclient/cookie/CookieOrigin;
.super Ljava/lang/Object;
.source "CookieOrigin.java"


# instance fields
.field private final host:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final port:I

.field private final secure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Host"

    .line 50
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "Port"

    .line 51
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNegative(ILjava/lang/String;)I

    const-string v0, "Path"

    .line 52
    invoke-static {p3, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iput-object p3, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "/"

    .line 58
    iput-object p1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    .line 60
    :goto_0
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 72
    iget v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-boolean v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->secure:Z

    if-eqz v1, :cond_0

    const-string v1, "(secure)"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    iget v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lcz/msebera/android/httpclient/cookie/CookieOrigin;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
