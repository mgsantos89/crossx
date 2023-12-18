.class public interface abstract Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;
.super Ljava/lang/Object;
.source "InvoicePaymentService.java"


# virtual methods
.method public abstract payInvoice(JLjava/lang/String;Ljava/lang/Integer;)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Field;
            value = "payment_method"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit/http/Field;
            value = "credit_card_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/payment/{id}"
    .end annotation
.end method

.method public abstract sendInvoiceToEmail(J)Lretrofit/Call;
    .param p1    # J
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit/Call<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/v3/payment/{id}/send-email"
    .end annotation
.end method
