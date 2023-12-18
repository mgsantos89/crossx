.class Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger$1;
.super Ljava/lang/Object;
.source "HttpLogginInterceptor.java"

# interfaces
.implements Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/rest/interceptor/HttpLogginInterceptor$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    return-void
.end method
