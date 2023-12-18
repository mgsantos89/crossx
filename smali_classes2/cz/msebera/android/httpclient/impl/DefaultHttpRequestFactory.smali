.class public Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"

# interfaces
.implements Lcz/msebera/android/httpclient/HttpRequestFactory;


# static fields
.field public static final INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

.field private static final RFC2616_COMMON_METHODS:[Ljava/lang/String;

.field private static final RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

.field private static final RFC2616_SPECIAL_METHODS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;-><init>()V

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->INSTANCE:Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;

    const-string v0, "GET"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    const-string v0, "POST"

    const-string v1, "PUT"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    const-string v0, "TRACE"

    const-string v1, "CONNECT"

    const-string v2, "HEAD"

    const-string v3, "OPTIONS"

    const-string v4, "DELETE"

    .line 58
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 73
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public newHttpRequest(Lcz/msebera/android/httpclient/RequestLine;)Lcz/msebera/android/httpclient/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/MethodNotSupportedException;
        }
    .end annotation

    const-string v0, "Request line"

    .line 82
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-interface {p1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 86
    :cond_0
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 88
    :cond_1
    sget-object v1, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Lcz/msebera/android/httpclient/RequestLine;)V

    return-object v0

    .line 91
    :cond_2
    new-instance p1, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " method not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/MethodNotSupportedException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 99
    :cond_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Lcz/msebera/android/httpclient/message/BasicHttpRequest;

    invoke-direct {v0, p1, p2}, Lcz/msebera/android/httpclient/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_2
    new-instance p2, Lcz/msebera/android/httpclient/MethodNotSupportedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " method not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcz/msebera/android/httpclient/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
