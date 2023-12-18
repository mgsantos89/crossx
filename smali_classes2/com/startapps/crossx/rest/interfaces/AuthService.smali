.class public interface abstract Lcom/startapps/crossx/rest/interfaces/AuthService;
.super Ljava/lang/Object;
.source "AuthService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/rest/interfaces/AuthService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0005H\'J\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0005H\'J\u00cc\u0001\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00032\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u000b2\n\u0008\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000b2\n\u0008\u0003\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u000bH\'\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/startapps/crossx/rest/interfaces/AuthService;",
        "",
        "forgotPassword",
        "Lretrofit2/Call;",
        "Ljava/lang/Void;",
        "",
        "login",
        "Lcom/startapps/crossx/model/AuthModel;",
        "loginData",
        "register",
        "name",
        "Lokhttp3/RequestBody;",
        "lastName",
        "email",
        "password",
        "birthday",
        "city",
        "gender",
        "nickname",
        "boxId",
        "facebookID",
        "file",
        "Lokhttp3/MultipartBody$Part;",
        "zipcode",
        "address",
        "addressNumber",
        "complement",
        "district",
        "state",
        "isTerm",
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
.method public abstract forgotPassword(Ljava/lang/String;)Lretrofit2/Call;
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
        value = "auth/forgot"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)Lretrofit2/Call;
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
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/sign-in"
    .end annotation
.end method

.method public abstract register(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "name"
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "last_name"
        .end annotation
    .end param
    .param p3    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "email"
        .end annotation
    .end param
    .param p4    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "password"
        .end annotation
    .end param
    .param p5    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "birthday"
        .end annotation
    .end param
    .param p6    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "city"
        .end annotation
    .end param
    .param p7    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "gender"
        .end annotation
    .end param
    .param p8    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "nickname"
        .end annotation
    .end param
    .param p9    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "box_id"
        .end annotation
    .end param
    .param p10    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "facebookID"
        .end annotation
    .end param
    .param p11    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p12    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "zipcode"
        .end annotation
    .end param
    .param p13    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "address"
        .end annotation
    .end param
    .param p14    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "address_number"
        .end annotation
    .end param
    .param p15    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "complement"
        .end annotation
    .end param
    .param p16    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "district"
        .end annotation
    .end param
    .param p17    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "state"
        .end annotation
    .end param
    .param p18    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "is_term"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/MultipartBody$Part;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/startapps/crossx/model/AuthModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/sign-up"
    .end annotation
.end method
