.class Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "PersonalRecordsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->getAllBenchmarks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 145
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 138
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 4

    .line 118
    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    iget-object p2, p2, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p2, 0x0

    .line 120
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 122
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/startapps/crossx/model/BenchmarksModel;

    invoke-direct {v1}, Lcom/startapps/crossx/model/BenchmarksModel;-><init>()V

    const-string v2, "id"

    .line 125
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/startapps/crossx/model/BenchmarksModel;->setId(J)V

    const-string v2, "name"

    const-string v3, "Sem"

    .line 126
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/model/BenchmarksModel;->setName(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-static {v0}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->-$$Nest$fgetbenchmarksModelList(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-static {p1}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->-$$Nest$fgetpersonalRecordPagerAdapter(Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;)Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/PersonalRecordPagerAdapter;->notifyDataSetChanged()V

    .line 131
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;->horizontalScrollView:Lcom/startapps/crossx/view/CustonIndicatePager;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/CustonIndicatePager;->populateScroll()V

    return-void
.end method
