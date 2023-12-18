.class public abstract Lcom/startapps/crossx/controller/network/requests/AbstractRequester;
.super Ljava/lang/Object;
.source "AbstractRequester.java"


# instance fields
.field protected activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

.field protected controller:Lcom/startapps/crossx/controller/network/ConnectionController;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    .line 23
    invoke-static {}, Lcom/startapps/crossx/controller/network/ConnectionController;->getInstance()Lcom/startapps/crossx/controller/network/ConnectionController;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;->controller:Lcom/startapps/crossx/controller/network/ConnectionController;

    .line 24
    sget-object v0, Lcom/startapps/crossx/model/key/UserKey;->AUTHORIZATION:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    const-string/jumbo v3, "token_jwt"

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/controller/utils/Preference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/controller/network/ConnectionController;->addHeaderClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addParams(Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Ljava/lang/String;[B)Lcom/loopj/android/http/RequestParams;
    .locals 1

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2, v0, p3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p1
.end method

.method protected makeRequestParamsWith()Lcom/loopj/android/http/RequestParams;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0}, Lcom/startapps/crossx/controller/network/requests/AbstractRequester;->makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;

    move-result-object v0

    return-object v0
.end method

.method protected makeRequestParamsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/loopj/android/http/RequestParams;
    .locals 1

    .line 43
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0, p1, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected makeRequestParamsWith(Ljava/util/Map;)Lcom/loopj/android/http/RequestParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/loopj/android/http/RequestParams;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0, p1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
