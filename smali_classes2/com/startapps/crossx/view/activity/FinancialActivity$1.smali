.class Lcom/startapps/crossx/view/activity/FinancialActivity$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "FinancialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/FinancialActivity;->getFinancial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/FinancialActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 193
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "content "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/FinancialActivity;->-$$Nest$fgetfinancialModelList(Lcom/startapps/crossx/view/activity/FinancialActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 161
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    move v0, p2

    .line 163
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    new-instance v1, Lcom/startapps/crossx/model/FinancialModel;

    invoke-direct {v1}, Lcom/startapps/crossx/model/FinancialModel;-><init>()V

    .line 166
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/model/FinancialModel;->setId(J)V

    .line 167
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/FinancialModel;->setStatus(I)V

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "month"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/FinancialModel;->setMonth(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "created"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/FinancialModel;->setCreated(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "plan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "price"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/model/FinancialModel;->setPrice(D)V

    .line 172
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-static {v2}, Lcom/startapps/crossx/view/activity/FinancialActivity;->-$$Nest$fgetfinancialModelList(Lcom/startapps/crossx/view/activity/FinancialActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/FinancialActivity;->-$$Nest$fgetfinancialModelList(Lcom/startapps/crossx/view/activity/FinancialActivity;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 177
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/FinancialActivity;->-$$Nest$fgetadapter(Lcom/startapps/crossx/view/activity/FinancialActivity;)Lcom/startapps/crossx/view/adapter/FinancialAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/FinancialAdapter;->notifyDataSetChanged()V

    .line 178
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/FinancialActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/FinancialActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/FinancialActivity$1;->this$0:Lcom/startapps/crossx/view/activity/FinancialActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/FinancialActivity;->notifyAlert()V

    :goto_1
    return-void
.end method
