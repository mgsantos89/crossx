.class final Lretrofit/SingleHelper$1;
.super Ljava/lang/Object;
.source "SingleHelper.java"

# interfaces
.implements Lretrofit/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/SingleHelper;->makeSingle(Lretrofit/CallAdapter;)Lretrofit/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/CallAdapter<",
        "Lrx/Single<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callAdapter:Lretrofit/CallAdapter;


# direct methods
.method constructor <init>(Lretrofit/CallAdapter;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lretrofit/SingleHelper$1;->val$callAdapter:Lretrofit/CallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit/Call;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lretrofit/SingleHelper$1;->adapt(Lretrofit/Call;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit/Call;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Call<",
            "TR;>;)",
            "Lrx/Single<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lretrofit/SingleHelper$1;->val$callAdapter:Lretrofit/CallAdapter;

    invoke-interface {v0, p1}, Lretrofit/CallAdapter;->adapt(Lretrofit/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Observable;

    .line 31
    invoke-virtual {p1}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 26
    iget-object v0, p0, Lretrofit/SingleHelper$1;->val$callAdapter:Lretrofit/CallAdapter;

    invoke-interface {v0}, Lretrofit/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
