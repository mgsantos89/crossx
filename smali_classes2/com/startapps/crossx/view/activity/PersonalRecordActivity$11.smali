.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "PersonalRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->editResult(Ljava/util/Calendar;JLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iput-object p3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$result:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 1067
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 1069
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 1074
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 1076
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 3

    .line 1046
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 1048
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 1051
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "results"

    .line 1053
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 1054
    :goto_0
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->val$result:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1055
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fgetexercisesModel(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Lcom/startapps/crossx/model/ExercisesModel;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mgetPersonalRecordsDetails(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/model/ExercisesModel;)V

    return-void
.end method
