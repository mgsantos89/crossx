.class public interface abstract Lcom/startapps/crossx/rest/interfaces/CheckInService;
.super Ljava/lang/Object;
.source "CheckInService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\'J(\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J(\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\n\u001a\u00020\u000bH\'J\u001e\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u000e0\u00032\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0006H\'J\u001e\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00032\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u000bH\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/interfaces/CheckInService;",
        "",
        "cancelCheckIn",
        "Lretrofit2/Call;",
        "Ljava/lang/Void;",
        "checkInId",
        "",
        "changeCheckIn",
        "Lcom/startapps/crossx/model/DataModel;",
        "Lcom/startapps/crossx/model/CheckInModel;",
        "reservationData",
        "",
        "confirmReservation",
        "getCheckInsByGymClassId",
        "Lcom/startapps/crossx/model/DataListModel;",
        "gymClassId",
        "makeCheckIn",
        "checkData",
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
.method public abstract cancelCheckIn(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "check_in_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "checkin/{check_in_id}/cancel"
    .end annotation
.end method

.method public abstract changeCheckIn(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "check_in_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "checkin/{check_in_id}/change"
    .end annotation
.end method

.method public abstract confirmReservation(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "check_in_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "checkin/{check_in_id}/confirm-reservation"
    .end annotation
.end method

.method public abstract getCheckInsByGymClassId(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "gym_class_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataListModel<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "checkin/list-by-class/{gym_class_id}"
    .end annotation
.end method

.method public abstract makeCheckIn(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/CheckInModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkin/make"
    .end annotation
.end method
