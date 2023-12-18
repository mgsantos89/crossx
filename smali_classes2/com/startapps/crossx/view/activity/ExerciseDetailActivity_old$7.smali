.class Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;
.source "ExerciseDetailActivity_old.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 752
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 792
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 794
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 755
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;->onSucess(Lorg/json/JSONObject;[Lcz/msebera/android/httpclient/Header;)V

    .line 757
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 758
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 760
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    const-string v0, "result_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p2, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fputrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/String;)V

    const-string p2, "results"

    .line 762
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 765
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 767
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 769
    new-instance v1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-direct {v1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;-><init>()V

    const-string v2, "id"

    .line 770
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setId(J)V

    const-string v2, "result"

    .line 771
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setResult(Ljava/lang/String;)V

    const-string v2, "created"

    .line 772
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->setDate(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 777
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 778
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getBestResult()V

    .line 779
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$morderPersonalRecordsByDate(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    .line 782
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgethistoricExerciseAdapter(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->setResultType(Ljava/lang/String;)V

    .line 783
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$fgethistoricExerciseAdapter(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    .line 785
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    iget-object p2, p1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$mgetTotalHeightofListView(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Landroid/widget/ListView;)V

    .line 786
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;->this$0:Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->-$$Nest$mrandomSet(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    :cond_3
    return-void
.end method
