.class public interface abstract Lcom/startapps/crossx/rest/interfaces/CreditCardService;
.super Ljava/lang/Object;
.source "CreditCardService.java"


# virtual methods
.method public abstract deleteCreditCard(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "/v3/user-credit-card/{id}"
    .end annotation
.end method

.method public abstract registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_name"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "due_date"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "cvv"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit/http/Field;
            value = "default"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit/http/Field;
            value = "belongs_to_another_user"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_name_extra"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_surname"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_cpf"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_email"
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_phone"
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_zip_code"
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_street"
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_street_number"
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_street_complement"
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_district"
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_city"
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "holder_state"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/user-credit-card"
    .end annotation
.end method

.method public abstract setCreditCardToDefault(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/v3/user-credit-card/{id}/default"
    .end annotation
.end method

.method public abstract userCreditCards()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/user-credit-card"
    .end annotation
.end method
