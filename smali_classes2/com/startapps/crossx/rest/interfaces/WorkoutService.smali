.class public interface abstract Lcom/startapps/crossx/rest/interfaces/WorkoutService;
.super Ljava/lang/Object;
.source "WorkoutService.java"


# virtual methods
.method public abstract workoutInDay(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/WorkoutModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/workout/day"
    .end annotation
.end method
