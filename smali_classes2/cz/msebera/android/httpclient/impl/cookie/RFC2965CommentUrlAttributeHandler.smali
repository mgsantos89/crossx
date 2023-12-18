.class public Lcz/msebera/android/httpclient/impl/cookie/RFC2965CommentUrlAttributeHandler;
.super Ljava/lang/Object;
.source "RFC2965CommentUrlAttributeHandler.java"

# interfaces
.implements Lcz/msebera/android/httpclient/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lcz/msebera/android/httpclient/cookie/SetCookie;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcz/msebera/android/httpclient/cookie/SetCookie2;

    .line 54
    invoke-interface {p1, p2}, Lcz/msebera/android/httpclient/cookie/SetCookie2;->setCommentURL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public validate(Lcz/msebera/android/httpclient/cookie/Cookie;Lcz/msebera/android/httpclient/cookie/CookieOrigin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcz/msebera/android/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    return-void
.end method
