.class public Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;
.super Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;
.source "BasicTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer<",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/startapps/crossx/controller/network/transformer/AbstractTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/IListeners;)V

    return-void
.end method


# virtual methods
.method public transform(Lorg/json/JSONObject;I[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 23
    new-instance v0, Lcom/startapps/crossx/model/AbstractModel;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/AbstractModel;-><init>(Lorg/json/JSONObject;)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transform "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transform"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "jsonObject "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "responseModel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseModel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x12c

    if-ge p2, v1, :cond_0

    const/16 v1, 0xc8

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    if-eqz p3, :cond_3

    .line 37
    iget-object p3, p0, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p3, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p1, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;->listener:Lcom/startapps/crossx/controller/network/listerners/IListeners;

    check-cast p1, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/AbstractModel;->getData()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    :cond_3
    :goto_1
    return-void
.end method
