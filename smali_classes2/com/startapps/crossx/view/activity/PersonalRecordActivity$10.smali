.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "PersonalRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 1023
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 1025
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 986
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 988
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 989
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 991
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    const-string v0, "is_rx_and_scale"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fputhasRxScaled(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Z)V

    const-string p2, "results"

    .line 996
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 999
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1001
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1003
    new-instance v1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-direct {v1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;-><init>()V

    const-string v2, "id"

    .line 1004
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setId(J)V

    const-string v2, "result"

    .line 1005
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setResult(Ljava/lang/String;)V

    const-string v2, "created"

    .line 1006
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setDate(Ljava/lang/String;)V

    const-string v2, "description"

    .line 1007
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1008
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 1009
    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setDescription(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v2, "type"

    .line 1011
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setType(I)V

    .line 1013
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mupdateUI(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V

    :cond_2
    return-void
.end method
