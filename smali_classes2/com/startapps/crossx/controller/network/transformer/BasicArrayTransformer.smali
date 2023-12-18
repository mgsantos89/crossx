.class public Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;
.super Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;
.source "BasicArrayTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer<",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/IListeners;)V

    return-void
.end method


# virtual methods
.method public transform(Lorg/json/JSONObject;I[Lcz/msebera/android/httpclient/Header;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/startapps/crossx/model/AbstractModel;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/AbstractModel;-><init>(Lorg/json/JSONObject;)V

    .line 25
    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x12c

    if-ge p2, v1, :cond_0

    const/16 v1, 0xc8

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    if-eqz p3, :cond_3

    .line 33
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p3, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p1, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getDatas()Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V

    goto :goto_1

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/transformer/BasicArrayTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p1, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getDatas()Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V

    :cond_3
    :goto_1
    return-void
.end method
