.class Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "LoadFooterListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->loadRanking(Lcom/startapps/crossx/model/WorkoutModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 415
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 404
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 406
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 17

    move-object/from16 v0, p0

    .line 338
    iget-object v1, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object v1, v1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    iget-object v1, v1, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    const/4 v2, 0x0

    .line 342
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    move-object/from16 v3, p1

    .line 344
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "result"

    .line 345
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 347
    new-instance v7, Lcom/startapps/crossx/model/RankingWodModel;

    invoke-direct {v7}, Lcom/startapps/crossx/model/RankingWodModel;-><init>()V

    const-string/jumbo v8, "wod_name"

    .line 348
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Lcom/startapps/crossx/model/RankingWodModel;->setWodID(J)V

    .line 349
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/startapps/crossx/model/RankingWodModel;->setWodName(Ljava/lang/String;)V

    const/4 v8, 0x0

    .line 351
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 352
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 353
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v11, Lcom/startapps/crossx/model/RankingCategory;

    invoke-direct {v11}, Lcom/startapps/crossx/model/RankingCategory;-><init>()V

    const-string v12, "category"

    .line 356
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/startapps/crossx/model/RankingCategory;->setCategoryID(J)V

    const-string v12, "category_name"

    const-string v13, "N\u00e3o consta"

    .line 357
    invoke-virtual {v9, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/startapps/crossx/model/RankingCategory;->setCategoryName(Ljava/lang/String;)V

    const-string/jumbo v12, "users"

    .line 359
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v12, 0x0

    .line 361
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_2

    .line 363
    new-instance v13, Lcom/startapps/crossx/model/RankingUserModel;

    invoke-direct {v13}, Lcom/startapps/crossx/model/RankingUserModel;-><init>()V

    .line 364
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/startapps/crossx/model/RankingUserModel;->setId(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/startapps/crossx/model/RankingUserModel;->setName(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v1, "last_name"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setLastName(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v14, "nickname"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setNickname(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v14, "picture"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setImgUser(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v14, "score"

    move-object/from16 v16, v4

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v13, v3, v4}, Lcom/startapps/crossx/model/RankingUserModel;->setScore(J)V

    .line 371
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "email"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setEmail(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "role"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setRole(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "privacy"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setPrivacity(I)V

    .line 375
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setBox(Lcom/startapps/crossx/model/BoxModel;)V

    .line 376
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "hours"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "startTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setStartTime(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "endTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/startapps/crossx/model/RankingUserModel;->setEndTime(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 380
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 381
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 381
    invoke-virtual {v13, v4, v14}, Lcom/startapps/crossx/model/RankingUserModel;->addResult(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 385
    :cond_1
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    goto/16 :goto_2

    :cond_2
    move-object/from16 v16, v4

    .line 388
    invoke-virtual {v11, v10}, Lcom/startapps/crossx/model/RankingCategory;->addUserModel(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    move-object/from16 v16, v4

    .line 391
    :goto_4
    invoke-virtual {v7, v11}, Lcom/startapps/crossx/model/RankingWodModel;->addRankingCategory(Lcom/startapps/crossx/model/RankingCategory;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    goto/16 :goto_1

    .line 394
    :cond_4
    iget-object v1, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-static {v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->-$$Nest$fgetlistRanking(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 397
    :cond_5
    iget-object v1, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    invoke-static {v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->-$$Nest$fgetlistRanking(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 398
    iget-object v1, v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment$3;->this$0:Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$RankingFragment;->displayRankingAtIndex(I)V

    :cond_6
    return-void
.end method
