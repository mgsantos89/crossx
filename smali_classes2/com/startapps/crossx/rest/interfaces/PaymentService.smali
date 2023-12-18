.class public interface abstract Lcom/startapps/crossx/rest/interfaces/PaymentService;
.super Ljava/lang/Object;
.source "PaymentService.java"


# virtual methods
.method public abstract getCreditCards()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "credit_cards"
    .end annotation
.end method

.method public abstract getDetailsMembership(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "user_membership_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user_memberships/{user_membership_id}"
    .end annotation
.end method

.method public abstract getHistory(I)Lretrofit/Call;
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
            "Lcom/startapps/crossx/model/History;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payments/history"
    .end annotation
.end method

.method public abstract getOnlinePayment(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "data_payment_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payments/{data_payment_id}"
    .end annotation
.end method

.method public abstract getPaymentMethods(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "box_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "boxes/{box_id}/user_payment_methods"
    .end annotation
.end method

.method public abstract getPaymentSettings(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "box_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "boxes/{box_id}/payment_settings"
    .end annotation
.end method

.method public abstract getToPayList()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payments"
    .end annotation
.end method

.method public abstract getToPayListById(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "user_membership_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PaymentModel;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user_memberships/{user_membership_id}/payments"
    .end annotation
.end method

.method public abstract getUserMembershipDetails(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "membership_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/FinancialInvoice;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user_memberships/{membership_id}/financial_invoices"
    .end annotation
.end method

.method public abstract getUserMemberships()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Membership;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/v3/user-memberships"
    .end annotation
.end method

.method public abstract payAllWithBankSlip()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payments/bank_slip"
    .end annotation
.end method

.method public abstract payAllWithCreditCard(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Query;
            value = "credit_card_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "payments/credit_card"
    .end annotation
.end method

.method public abstract payMembershipByBankSlip(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "membership_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "user_memberships/{membership_id}/payments/bank_slip"
    .end annotation
.end method

.method public abstract payMembershipByCreditCard(JJ)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "membership_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit/http/Field;
            value = "credit_card_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/DataPayment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "user_memberships/{membership_id}/payments/credit_card"
    .end annotation
.end method

.method public abstract postFCMToken(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "registration_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "device_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "fcm-registration"
    .end annotation
.end method

.method public abstract registerCard(Lcom/startapps/crossx/model/CreditCard;)Lretrofit/Call;
    .param p1    # Lcom/startapps/crossx/model/CreditCard;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/CreditCard;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/CreditCard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "credit_cards"
    .end annotation
.end method

.method public abstract removeFCMToken(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "registration_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/HTTP;
        hasBody = true
        method = "DELETE"
        path = "fcm-registration/{registration_token}"
    .end annotation
.end method

.method public abstract setDefaultCard(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Field;
            value = "credit_card_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "credit_cards/default"
    .end annotation
.end method

.method public abstract setEnableRecurrence(JJ)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "user_membership_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit/http/Query;
            value = "credit_card_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lretrofit/Call<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "user_memberships/{user_membership_id}/recurrence"
    .end annotation
.end method
