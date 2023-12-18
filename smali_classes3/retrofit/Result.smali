.class public final Lretrofit/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final error:Ljava/lang/Throwable;

.field private final response:Lretrofit/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Response<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit/Response;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lretrofit/Result;->response:Lretrofit/Response;

    .line 37
    iput-object p2, p0, Lretrofit/Result;->error:Ljava/lang/Throwable;

    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lretrofit/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lretrofit/Result<",
            "TT;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Lretrofit/Result;

    const-string v1, "error == null"

    invoke-static {p0, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lretrofit/Result;-><init>(Lretrofit/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static response(Lretrofit/Response;)Lretrofit/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Response<",
            "TT;>;)",
            "Lretrofit/Result<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lretrofit/Result;

    const-string v1, "response == null"

    invoke-static {p0, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit/Result;-><init>(Lretrofit/Response;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1

    .line 57
    iget-object v0, p0, Lretrofit/Result;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lretrofit/Result;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public response()Lretrofit/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Response<",
            "TT;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lretrofit/Result;->response:Lretrofit/Response;

    return-object v0
.end method
