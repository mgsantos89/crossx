.class public Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerResolver;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcz/msebera/android/httpclient/protocol/UriPatternMatcher<",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    return-void
.end method


# virtual methods
.method public getHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->getObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;
    .locals 1

    .line 104
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;

    return-object p1
.end method

.method public register(Ljava/lang/String;Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;)V
    .locals 1

    const-string v0, "URI request pattern"

    .line 71
    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Request handler"

    .line 72
    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcz/msebera/android/httpclient/protocol/HttpRequestHandler;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcz/msebera/android/httpclient/protocol/HttpRequestHandlerRegistry;->matcher:Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lcz/msebera/android/httpclient/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    return-void
.end method
