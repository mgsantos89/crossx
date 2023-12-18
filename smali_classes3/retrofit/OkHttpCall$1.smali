.class Lretrofit/OkHttpCall$1;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/OkHttpCall;->enqueue(Lretrofit/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/OkHttpCall;

.field final synthetic val$callback:Lretrofit/Callback;


# direct methods
.method constructor <init>(Lretrofit/OkHttpCall;Lretrofit/Callback;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    iput-object p2, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private callSuccess(Lretrofit/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall$1;->val$callback:Lretrofit/Callback;

    iget-object v1, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    invoke-static {v1}, Lretrofit/OkHttpCall;->access$000(Lretrofit/OkHttpCall;)Lretrofit/Retrofit;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 0

    .line 88
    invoke-direct {p0, p2}, Lretrofit/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 1

    .line 94
    :try_start_0
    iget-object v0, p0, Lretrofit/OkHttpCall$1;->this$0:Lretrofit/OkHttpCall;

    invoke-static {v0, p1}, Lretrofit/OkHttpCall;->access$100(Lretrofit/OkHttpCall;Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-direct {p0, p1}, Lretrofit/OkHttpCall$1;->callSuccess(Lretrofit/Response;)V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    invoke-direct {p0, p1}, Lretrofit/OkHttpCall$1;->callFailure(Ljava/lang/Throwable;)V

    return-void
.end method
