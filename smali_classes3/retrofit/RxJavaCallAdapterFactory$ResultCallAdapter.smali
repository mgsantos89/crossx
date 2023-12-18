.class final Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lretrofit/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RxJavaCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResultCallAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/CallAdapter<",
        "Lrx/Observable<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit/Call;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;->adapt(Lretrofit/Call;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit/Call;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Call<",
            "TR;>;)",
            "Lrx/Observable<",
            "Lretrofit/Result<",
            "TR;>;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;-><init>(Lretrofit/Call;Lretrofit/RxJavaCallAdapterFactory$1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$2;

    invoke-direct {v0, p0}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$2;-><init>(Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;)V

    .line 182
    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$1;

    invoke-direct {v0, p0}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter$1;-><init>(Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;)V

    .line 187
    invoke-virtual {p1, v0}, Lrx/Observable;->onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 177
    iget-object v0, p0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
