.class Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "ClassesMonthFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->getWorkoutDay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 197
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 190
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 7

    .line 146
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    move v0, p2

    .line 148
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 150
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "workout"

    .line 151
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 155
    new-instance v3, Lcom/startapps/crossx/model/WorkoutModel;

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lcom/startapps/crossx/model/WorkoutModel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string/jumbo v1, "wods"

    .line 157
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, p2

    .line 160
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 162
    new-instance v5, Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/startapps/crossx/model/WodsModel;-><init>(Lorg/json/JSONObject;)V

    .line 163
    invoke-virtual {v3, v5}, Lcom/startapps/crossx/model/WorkoutModel;->addWodsModellList(Lcom/startapps/crossx/model/WodsModel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "hours"

    .line 167
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, p2

    .line 168
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 170
    new-instance v4, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/startapps/crossx/model/WorkoutHours;-><init>(Lorg/json/JSONObject;Lcom/startapps/crossx/model/WorkoutModel;)V

    .line 171
    iget-object v5, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-virtual {v5, v3}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->isSentResult(Lcom/startapps/crossx/model/WorkoutModel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/startapps/crossx/model/WorkoutHours;->setEnableCheckin(Z)V

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSentResult "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableCheckin()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "isSentResult"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object v5, v5, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->workoutHoursList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->orderListHour()V

    .line 182
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;->-$$Nest$fgetclassesWorkoutAdapter(Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;)Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ClassesWorkoutAdapter;->notifyDataSetChanged()V

    return-void
.end method
