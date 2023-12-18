.class public interface abstract Lcom/startapps/crossx/rest/interfaces/AthleteService;
.super Ljava/lang/Object;
.source "AthleteService.java"


# virtual methods
.method public abstract users(IILjava/lang/String;)Lretrofit/Call;
    .param p1    # I
        .annotation runtime Lretrofit/http/Query;
            value = "filter"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/users"
    .end annotation
.end method

.method public abstract usersSameBox(I)Lretrofit/Call;
    .param p1    # I
        .annotation runtime Lretrofit/http/Query;
            value = "filter"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/users"
    .end annotation
.end method

.method public abstract usersSameBoxPerPage(IILjava/lang/String;)Lretrofit/Call;
    .param p1    # I
        .annotation runtime Lretrofit/http/Query;
            value = "filter"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/box/users"
    .end annotation
.end method
