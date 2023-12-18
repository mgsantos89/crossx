.class public interface abstract Lcom/startapps/crossx/rest/interfaces/UserMembershipService;
.super Ljava/lang/Object;
.source "UserMembershipService.java"


# virtual methods
.method public abstract fetchUserMemberships(Ljava/lang/String;II)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/user-memberships"
    .end annotation
.end method

.method public abstract getCheckinsWithUserMembership(JII)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit/http/Query;
            value = "per_page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Checkin;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/user-memberships/{id}/checkins"
    .end annotation
.end method

.method public abstract getUserMembership(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/user-memberships/{id}"
    .end annotation
.end method

.method public abstract renewUserMembership(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/UserMembership;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/user-memberships/{id}/renew"
    .end annotation
.end method
