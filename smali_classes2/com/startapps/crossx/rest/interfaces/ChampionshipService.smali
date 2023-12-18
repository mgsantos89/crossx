.class public interface abstract Lcom/startapps/crossx/rest/interfaces/ChampionshipService;
.super Ljava/lang/Object;
.source "ChampionshipService.java"


# virtual methods
.method public abstract championship(I)Lretrofit/Call;
    .param p1    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/championships"
    .end annotation
.end method

.method public abstract getChampionship(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipDetailModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/championship/{id}"
    .end annotation
.end method
