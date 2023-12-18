.class public interface abstract Lcom/startapps/crossx/rest/interfaces/UserService;
.super Ljava/lang/Object;
.source "UserService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/interfaces/UserService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u001e\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\'J \u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00032\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\'\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/interfaces/UserService;",
        "",
        "deleteAccount",
        "Lretrofit2/Call;",
        "Ljava/lang/Void;",
        "update",
        "Lcom/startapps/crossx/model/DataModel;",
        "Lcom/startapps/crossx/model/UserModel;",
        "updateUserData",
        "",
        "updateUserImage",
        "avatar",
        "Lokhttp3/MultipartBody$Part;",
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
.method public abstract deleteAccount()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user-delete-account"
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;)Lretrofit2/Call;
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
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "users"
    .end annotation
.end method

.method public abstract updateUserImage(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/DataModel<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user-update-image"
    .end annotation
.end method
