.class public Lcom/startapps/crossx/rest/clients/CreditCardClient;
.super Lcom/startapps/crossx/rest/clients/BaseClient;
.source "CreditCardClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/rest/clients/BaseClient<",
        "Lcom/startapps/crossx/rest/interfaces/CreditCardService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const-class v0, Lcom/startapps/crossx/rest/interfaces/CreditCardService;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/rest/clients/BaseClient;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public creditCards(Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/CreditCardClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/CreditCardService;

    invoke-interface {v0}, Lcom/startapps/crossx/rest/interfaces/CreditCardService;->userCreditCards()Lretrofit/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public deleteCreditCard(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/CreditCardClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/CreditCardService;

    iget-wide v1, p1, Lcom/startapps/crossx/model/UserCreditCard;->id:J

    invoke-interface {v0, v1, v2}, Lcom/startapps/crossx/rest/interfaces/CreditCardService;->deleteCreditCard(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public registerCreditCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
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
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 39
    iget-object v1, v0, Lcom/startapps/crossx/rest/clients/CreditCardClient;->service:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/startapps/crossx/rest/interfaces/CreditCardService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    invoke-interface/range {v2 .. v20}, Lcom/startapps/crossx/rest/interfaces/CreditCardService;->registerCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v1

    move-object/from16 v2, p19

    .line 58
    invoke-interface {v1, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method

.method public setCreditCardToDefault(Lcom/startapps/crossx/model/UserCreditCard;Lcom/startapps/crossx/rest/callback/CancelableCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            "Lcom/startapps/crossx/rest/callback/CancelableCallback<",
            "Lcom/startapps/crossx/model/UserCreditCard;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/startapps/crossx/rest/clients/CreditCardClient;->service:Ljava/lang/Object;

    check-cast v0, Lcom/startapps/crossx/rest/interfaces/CreditCardService;

    iget-wide v1, p1, Lcom/startapps/crossx/model/UserCreditCard;->id:J

    invoke-interface {v0, v1, v2}, Lcom/startapps/crossx/rest/interfaces/CreditCardService;->setCreditCardToDefault(J)Lretrofit/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    return-void
.end method
