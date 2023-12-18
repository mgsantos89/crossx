.class public Lcz/msebera/android/httpclient/auth/AuthScope;
.super Ljava/lang/Object;
.source "AuthScope.java"


# static fields
.field public static final ANY:Lcz/msebera/android/httpclient/auth/AuthScope;

.field public static final ANY_HOST:Ljava/lang/String; = null

.field public static final ANY_PORT:I = -0x1

.field public static final ANY_REALM:Ljava/lang/String;

.field public static final ANY_SCHEME:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final port:I

.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    new-instance v0, Lcz/msebera/android/httpclient/auth/AuthScope;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY:Lcz/msebera/android/httpclient/auth/AuthScope;

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;)V
    .locals 2

    .line 124
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/HttpHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/HttpHost;->getPort()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcz/msebera/android/httpclient/auth/AuthScope;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scope"

    .line 165
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getPort()I

    move-result v0

    iput v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    .line 168
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/auth/AuthScope;->getScheme()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 157
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    sget-object v1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 142
    sget-object v0, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcz/msebera/android/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 107
    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-gez p2, :cond_1

    const/4 p2, -0x1

    .line 108
    :cond_1
    iput p2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-nez p3, :cond_2

    .line 109
    sget-object p3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    :cond_2
    iput-object p3, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-nez p4, :cond_3

    .line 110
    sget-object p1, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 251
    :cond_1
    instance-of v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;

    if-nez v2, :cond_2

    .line 252
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 254
    :cond_2
    check-cast p1, Lcz/msebera/android/httpclient/auth/AuthScope;

    .line 255
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    .line 256
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    .line 258
    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object p1, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    .line 259
    invoke-static {v2, p1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 183
    iget v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    .line 296
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 297
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public match(Lcz/msebera/android/httpclient/auth/AuthScope;)I
    .locals 4

    .line 209
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    iget-object v1, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    sget-object v2, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 216
    :goto_0
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 219
    :cond_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    return v1

    .line 223
    :cond_3
    :goto_1
    iget v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    iget v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_4
    if-eq v2, v1, :cond_5

    if-eq v3, v1, :cond_5

    return v1

    .line 230
    :cond_5
    :goto_2
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    iget-object v3, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-static {v2, v3}, Lcz/msebera/android/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, 0x8

    goto :goto_3

    .line 233
    :cond_6
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    sget-object v3, Lcz/msebera/android/httpclient/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object p1, p1, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eq p1, v3, :cond_7

    return v1

    :cond_7
    :goto_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 269
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x27

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-object v2, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "<any realm>"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :goto_0
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    if-ltz v1, :cond_2

    const/16 v1, 0x3a

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lcz/msebera/android/httpclient/auth/AuthScope;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
