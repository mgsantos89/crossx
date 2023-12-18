.class public final Lretrofit/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lretrofit/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Response<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "*>;)V"
        }
    .end annotation

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lretrofit/Response;->code()I

    move-result v0

    iput v0, p0, Lretrofit/HttpException;->code:I

    .line 12
    invoke-virtual {p1}, Lretrofit/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/HttpException;->message:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lretrofit/HttpException;->response:Lretrofit/Response;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 18
    iget v0, p0, Lretrofit/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lretrofit/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lretrofit/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Response<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lretrofit/HttpException;->response:Lretrofit/Response;

    return-object v0
.end method
