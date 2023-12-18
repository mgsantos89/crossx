.class public final Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "DayTrainingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getWorkoutDay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J;\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ \u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J#\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "com/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1",
        "Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;",
        "onNetworkError",
        "",
        "statusCode",
        "",
        "headers",
        "",
        "Lcz/msebera/android/httpclient/Header;",
        "responseBody",
        "",
        "error",
        "",
        "(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V",
        "onServerError",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "message",
        "",
        "onSucess",
        "content",
        "Lorg/json/JSONArray;",
        "(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    .line 140
    check-cast p2, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 232
    iget-object p1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget p2, Lcom/startapps/crossx/R$id;->progressBarDayTraining:I

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 237
    iget-object p1, p0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget p2, Lcom/startapps/crossx/R$id;->progressBarDayTraining:I

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "content"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "headers"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-virtual {v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-virtual {v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 143
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v3, Lcom/startapps/crossx/R$id;->progressBarDayTraining:I

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 145
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_d

    .line 146
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v5, Lcom/startapps/crossx/R$id;->image_warning:I

    invoke-virtual {v2, v5}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x1

    move v6, v4

    move v7, v5

    :goto_0
    if-ge v6, v2, :cond_7

    .line 150
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "workout"

    .line 151
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 153
    new-instance v10, Lcom/startapps/crossx/model/WorkoutModel;

    const-string v11, "name"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/startapps/crossx/model/WorkoutModel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 154
    new-instance v11, Lcom/startapps/crossx/model/CategoryModel;

    invoke-direct {v11}, Lcom/startapps/crossx/model/CategoryModel;-><init>()V

    const-string v12, "id"

    .line 155
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/startapps/crossx/model/CategoryModel;->setId(I)V

    .line 156
    invoke-virtual {v10, v11}, Lcom/startapps/crossx/model/WorkoutModel;->setProgramModel(Lcom/startapps/crossx/model/CategoryModel;)V

    const-string/jumbo v8, "tecniques"

    .line 157
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string/jumbo v11, "warmups"

    .line 158
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string/jumbo v12, "wods"

    .line 159
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const-string v13, "result_categories"

    .line 160
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 161
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-gtz v14, :cond_0

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-gtz v14, :cond_0

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_6

    :cond_0
    if-eqz v13, :cond_1

    .line 163
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 164
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v14, v4

    :goto_1
    if-ge v14, v7, :cond_1

    .line 165
    new-instance v15, Lcom/startapps/crossx/model/WokoutCategorie;

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/startapps/crossx/model/WokoutCategorie;-><init>(Lorg/json/JSONObject;)V

    .line 166
    invoke-virtual {v10, v15}, Lcom/startapps/crossx/model/WorkoutModel;->addCategorie(Lcom/startapps/crossx/model/WokoutCategorie;)V

    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x8

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 170
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v7, v4

    :goto_2
    if-ge v7, v3, :cond_2

    .line 171
    new-instance v13, Lcom/startapps/crossx/model/TecniquesModel;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/startapps/crossx/model/TecniquesModel;-><init>(Lorg/json/JSONObject;)V

    .line 172
    invoke-virtual {v10, v13}, Lcom/startapps/crossx/model/WorkoutModel;->addTecniquesModelList(Lcom/startapps/crossx/model/TecniquesModel;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    .line 175
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 176
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v7, v4

    :goto_3
    if-ge v7, v3, :cond_3

    .line 177
    new-instance v8, Lcom/startapps/crossx/model/WarmupsModel;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/startapps/crossx/model/WarmupsModel;-><init>(Lorg/json/JSONObject;)V

    .line 178
    invoke-virtual {v10, v8}, Lcom/startapps/crossx/model/WorkoutModel;->addWarmupsModellList(Lcom/startapps/crossx/model/WarmupsModel;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    if-eqz v12, :cond_4

    .line 181
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 182
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v7, v4

    :goto_4
    if-ge v7, v3, :cond_4

    .line 183
    new-instance v8, Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/startapps/crossx/model/WodsModel;-><init>(Lorg/json/JSONObject;)V

    .line 184
    invoke-virtual {v10, v8}, Lcom/startapps/crossx/model/WorkoutModel;->addWodsModellList(Lcom/startapps/crossx/model/WodsModel;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    const-string v3, "hours"

    .line 187
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 188
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v8, v4

    :goto_5
    if-ge v8, v7, :cond_5

    .line 189
    new-instance v9, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Lcom/startapps/crossx/model/WorkoutHours;-><init>(Lorg/json/JSONObject;Lcom/startapps/crossx/model/WorkoutModel;)V

    .line 191
    invoke-virtual {v10, v9}, Lcom/startapps/crossx/model/WorkoutModel;->addworkoutHours(Lcom/startapps/crossx/model/WorkoutHours;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 193
    :cond_5
    iget-object v3, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x8

    goto/16 :goto_0

    .line 197
    :cond_7
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-virtual {v1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 198
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->viewpager:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 200
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    new-instance v3, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;

    .line 201
    iget-object v6, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v6}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;

    move-result-object v6

    .line 202
    iget-object v8, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-virtual {v8}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    .line 203
    iget-object v9, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    check-cast v9, Lcom/startapps/crossx/Interfaces/DayTrainingListener;

    .line 200
    invoke-direct {v3, v6, v8, v9}, Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;-><init>(Ljava/util/List;Landroidx/fragment/app/FragmentManager;Lcom/startapps/crossx/Interfaces/DayTrainingListener;)V

    invoke-static {v2, v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$setMDemoCollectionPagerAdapter$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;)V

    .line 206
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v3, Lcom/startapps/crossx/R$id;->viewpager:I

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getMDemoCollectionPagerAdapter$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Lcom/startapps/crossx/view/adapter/WorkoutCollectionPagerAdapter;

    move-result-object v3

    if-nez v3, :cond_8

    const-string v3, "mDemoCollectionPagerAdapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_8
    check-cast v3, Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 207
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v3, Lcom/startapps/crossx/R$id;->indicator_athletes:I

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/viewpagerindicator/TitlePageIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v6, Lcom/startapps/crossx/R$id;->viewpager:I

    invoke-virtual {v3, v6}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 208
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_9

    .line 209
    iget-object v2, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v3, Lcom/startapps/crossx/R$id;->viewpager:I

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 211
    :cond_9
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->image_warning:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v7, :cond_a

    move v2, v4

    goto :goto_6

    :cond_a
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->button_cv_check_in:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v7, :cond_b

    move v3, v4

    goto :goto_7

    :cond_b
    const/16 v3, 0x8

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v7, :cond_c

    .line 215
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->image_warning:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f080168

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    :cond_c
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-static {v1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->access$getWorkoutModelList$p(Lcom/startapps/crossx/modules/wod/DayTrainingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 218
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-virtual {v1, v5}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->setHasOptionsMenu(Z)V

    goto :goto_8

    .line 223
    :cond_d
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->image_warning:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f080167

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->image_warning:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object v1, v0, Lcom/startapps/crossx/modules/wod/DayTrainingFragment$getWorkoutDay$1;->this$0:Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    sget v2, Lcom/startapps/crossx/R$id;->button_cv_check_in:I

    invoke-virtual {v1, v2}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e
    :goto_8
    return-void
.end method
