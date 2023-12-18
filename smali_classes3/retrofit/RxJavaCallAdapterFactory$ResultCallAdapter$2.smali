.class Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$2;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;->adapt(Lretrofit/Call;)Lrx/Observable;
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
        "Lretrofit/Result<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;


# direct methods
.method constructor <init>(Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$2;->this$0:Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, Lretrofit/Response;

    invoke-virtual {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$2;->call(Lretrofit/Response;)Lretrofit/Result;

    move-result-object p1

    return-object p1
.end method

.method public call(Lretrofit/Response;)Lretrofit/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response<",
            "TR;>;)",
            "Lretrofit/Result<",
            "TR;>;"
        }
    .end annotation

    .line 184
    invoke-static {p1}, Lretrofit/Result;->response(Lretrofit/Response;)Lretrofit/Result;

    move-result-object p1

    return-object p1
.end method
