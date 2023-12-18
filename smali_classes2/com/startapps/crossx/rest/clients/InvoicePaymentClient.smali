.class public Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "InvoicePaymentClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const-class v0, Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public payInvoice(JLjava/lang/String;Ljava/lang/Integer;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;->payInvoice(JLjava/lang/String;Ljava/lang/Integer;)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public sendInvoiceToEmail(JLcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/Payment;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/InvoicePaymentClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;

    invoke-interface {v0, p1, p2}, Lcom/startapps/crossx/rest/interfaces/InvoicePaymentService;->sendInvoiceToEmail(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method
