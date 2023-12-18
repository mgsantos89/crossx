.class public interface abstract Lcom/startapps/crossx/rest/interfaces/GymClassService;
.super Ljava/lang/Object;
.source "GymClassService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/interfaces/GymClassService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007H\'J/\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\t0\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\'\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/interfaces/GymClassService;",
        "",
        "getGymClass",
        "Lretrofit2/Call;",
        "Lcom/startapps/crossx/model/DataModel;",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "gymClassId",
        "",
        "gymClasses",
        "Lcom/startapps/crossx/model/DataListModel;",
        "class_date",
        "",
        "category_id",
        "(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getGymClass(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "gym_class_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "gym-classes/{gym_class_id}"
    .end annotation
.end method

.method public abstract gymClasses(Ljava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "class_date"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "category_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/GymClassModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "gym-classes"
    .end annotation
.end method
