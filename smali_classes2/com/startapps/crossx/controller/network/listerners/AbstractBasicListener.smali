.class public abstract Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.super Ljava/lang/Object;
.source "AbstractBasicListener.java"

# interfaces
.implements Lcom/startapps/crossx/controller/network/listerners/IListeners;


# instance fields
.field protected activity:Lcom/startapps/crossx/view/activity/AbstractActivity;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    :cond_0
    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 1

    .line 28
    iget-object p2, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p2, :cond_0

    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    const v0, 0x7f12022f

    invoke-virtual {p4, v0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->notification(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->endLoader()V

    :cond_0
    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 4

    const/16 v0, 0x193

    if-ne p3, v0, :cond_3

    const-string p3, "errors"

    .line 38
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p3, ""

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move-object v1, p3

    .line 42
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 43
    new-instance v2, Lcom/startapps/crossx/model/InvalidFieldsModel;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/startapps/crossx/model/InvalidFieldsModel;-><init>(Lorg/json/JSONObject;)V

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/startapps/crossx/model/InvalidFieldsModel;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 48
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p1, :cond_5

    .line 50
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->notification(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->endLoader()V

    goto :goto_1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p1, :cond_5

    .line 55
    invoke-virtual {p1, v1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->notification(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->endLoader()V

    goto :goto_1

    :cond_3
    const/16 p1, 0x191

    if-ne p3, p1, :cond_4

    .line 60
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->clearPreference()V

    .line 62
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p1, :cond_5

    .line 63
    invoke-static {p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToMain(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    const p2, 0x7f120230

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->notification(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p1, :cond_5

    .line 69
    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/activity/AbstractActivity;->notification(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->endLoader()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->activity:Lcom/startapps/crossx/view/activity/AbstractActivity;

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->endLoader()V

    :cond_0
    return-void
.end method
