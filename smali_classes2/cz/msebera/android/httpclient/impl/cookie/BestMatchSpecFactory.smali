.class public Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;
.super Ljava/lang/Object;
.source "BestMatchSpecFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecFactory;
.implements Lcz/msebera/android/httpclient/cookie/CookieSpecProvider;


# instance fields
.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->datepatterns:[Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->oneHeader:Z

    return-void
.end method


# virtual methods
.method public create(Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 2

    .line 83
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->datepatterns:[Ljava/lang/String;

    iget-boolean v1, p0, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpecFactory;->oneHeader:Z

    invoke-direct {p1, v0, v1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-object p1
.end method

.method public newInstance(Lcz/msebera/android/httpclient/params/HttpParams;)Lcz/msebera/android/httpclient/cookie/CookieSpec;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "http.protocol.cookie-datepatterns"

    .line 67
    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "http.protocol.single-cookie-header"

    const/4 v2, 0x0

    .line 73
    invoke-interface {p1, v1, v2}, Lcz/msebera/android/httpclient/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result p1

    .line 76
    new-instance v1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    invoke-direct {v1, v0, p1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>([Ljava/lang/String;Z)V

    return-object v1

    .line 78
    :cond_1
    new-instance p1, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/impl/cookie/BestMatchSpec;-><init>()V

    return-object p1
.end method
