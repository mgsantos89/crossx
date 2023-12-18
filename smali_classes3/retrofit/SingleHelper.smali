.class final Lretrofit/SingleHelper;
.super Ljava/lang/Object;
.source "SingleHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeSingle(Lretrofit/CallAdapter;)Lretrofit/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/CallAdapter<",
            "Lrx/Observable<",
            "*>;>;)",
            "Lretrofit/CallAdapter<",
            "Lrx/Single<",
            "*>;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lretrofit/SingleHelper$1;

    invoke-direct {v0, p0}, Lretrofit/SingleHelper$1;-><init>(Lretrofit/CallAdapter;)V

    return-object v0
.end method
