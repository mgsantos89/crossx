.class Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$1;
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
        "Ljava/lang/Throwable;",
        "Lretrofit/Result<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;


# direct methods
.method constructor <init>(Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$1;->this$0:Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$1;->call(Ljava/lang/Throwable;)Lretrofit/Result;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/Throwable;)Lretrofit/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lretrofit/Result<",
            "TR;>;"
        }
    .end annotation

    .line 189
    invoke-static {p1}, Lretrofit/Result;->error(Ljava/lang/Throwable;)Lretrofit/Result;

    move-result-object p1

    return-object p1
.end method
