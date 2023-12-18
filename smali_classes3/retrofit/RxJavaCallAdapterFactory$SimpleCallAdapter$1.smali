.class Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter$1;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;->adapt(Lretrofit/Call;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lretrofit/Response<",
        "TR;>;",
        "Lrx/Observable<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;


# direct methods
.method constructor <init>(Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter$1;->this$0:Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, Lretrofit/Response;

    invoke-virtual {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter$1;->call(Lretrofit/Response;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lretrofit/Response;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TR;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    new-instance v0, Lretrofit/HttpException;

    invoke-direct {v0, p1}, Lretrofit/HttpException;-><init>(Lretrofit/Response;)V

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
