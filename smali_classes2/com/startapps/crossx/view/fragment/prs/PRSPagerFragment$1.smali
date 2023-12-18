.class Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "PRSPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->getPersonalRecordWhithBenchmark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 148
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 141
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 8

    .line 112
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-static {p2}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->-$$Nest$fgetexercisesModelList(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 115
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 117
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/startapps/crossx/model/ExercisesModel;

    invoke-direct {v1}, Lcom/startapps/crossx/model/ExercisesModel;-><init>()V

    const-string v2, "id"

    .line 120
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/startapps/crossx/model/ExercisesModel;->setId(J)V

    const-string v3, "name"

    const-string v4, "Sem"

    .line 121
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/startapps/crossx/model/ExercisesModel;->setName(Ljava/lang/String;)V

    const-string v5, "best_result"

    const/4 v6, 0x0

    .line 122
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/startapps/crossx/model/ExercisesModel;->setBestResult(Ljava/lang/String;)V

    const-string v5, "description"

    .line 124
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/startapps/crossx/model/ExercisesModel;->setDescription(Ljava/lang/String;)V

    const-string v5, "result_type"

    .line 126
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_1
    invoke-virtual {v1, v6, v7}, Lcom/startapps/crossx/model/ExercisesModel;->setResultTypeID(J)V

    .line 127
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, ""

    if-nez v2, :cond_1

    move-object v2, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/ExercisesModel;->setResultTypeName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v1, v6}, Lcom/startapps/crossx/model/ExercisesModel;->setResultTypeResult(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->-$$Nest$fgetexercisesModelList(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 133
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->-$$Nest$msorList(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)V

    .line 134
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;->-$$Nest$fgetexerciserAdapter(Lcom/startapps/crossx/view/fragment/prs/PRSPagerFragment;)Lcom/startapps/crossx/view/adapter/ExerciserAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ExerciserAdapter;->notifyDataSetChanged()V

    return-void
.end method
