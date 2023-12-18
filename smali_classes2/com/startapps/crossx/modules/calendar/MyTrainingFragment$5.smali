.class Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;
.super Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;
.source "MyTrainingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->getWorkoutUser(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {p0, p2}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    return-void
.end method


# virtual methods
.method public onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .line 365
    invoke-super {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onNetworkError(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 367
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 358
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/controller/network/listerners/AbstractBasicArrayListener;->onServerError(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 360
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onSucess(Lorg/json/JSONArray;[Lcz/msebera/android/httpclient/Header;)V
    .locals 10

    .line 270
    iget-object p2, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p2, p2, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    move v0, p2

    .line 272
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 274
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 278
    new-instance v2, Lcom/startapps/crossx/model/WorkoutModel;

    const-string v3, "category"

    .line 279
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "Sem"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/startapps/crossx/model/WorkoutModel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string/jumbo v3, "tecniques"

    .line 281
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string/jumbo v4, "warmups"

    .line 282
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string/jumbo v5, "wods"

    .line 283
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "categories"

    .line 284
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 286
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    move v7, p2

    .line 288
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 290
    new-instance v8, Lcom/startapps/crossx/model/WokoutCategorie;

    .line 291
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/startapps/crossx/model/WokoutCategorie;-><init>(Lorg/json/JSONObject;)V

    .line 292
    invoke-virtual {v2, v8}, Lcom/startapps/crossx/model/WorkoutModel;->addCategorie(Lcom/startapps/crossx/model/WokoutCategorie;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v6, p2

    .line 298
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 300
    new-instance v7, Lcom/startapps/crossx/model/TecniquesModel;

    .line 301
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/startapps/crossx/model/TecniquesModel;-><init>(Lorg/json/JSONObject;)V

    .line 302
    invoke-virtual {v2, v7}, Lcom/startapps/crossx/model/WorkoutModel;->addTecniquesModelList(Lcom/startapps/crossx/model/TecniquesModel;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    .line 306
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, p2

    .line 308
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 310
    new-instance v6, Lcom/startapps/crossx/model/WarmupsModel;

    .line 311
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/startapps/crossx/model/WarmupsModel;-><init>(Lorg/json/JSONObject;)V

    .line 312
    invoke-virtual {v2, v6}, Lcom/startapps/crossx/model/WorkoutModel;->addWarmupsModellList(Lcom/startapps/crossx/model/WarmupsModel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    .line 316
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v3, p2

    .line 318
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 320
    new-instance v4, Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/startapps/crossx/model/WodsModel;-><init>(Lorg/json/JSONObject;)V

    .line 321
    invoke-virtual {v2, v4}, Lcom/startapps/crossx/model/WorkoutModel;->addWodsModellList(Lcom/startapps/crossx/model/WodsModel;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    const-string v3, "hours"

    .line 325
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 329
    new-instance v3, Lcom/startapps/crossx/model/WorkoutHours;

    invoke-direct {v3, v1, v2}, Lcom/startapps/crossx/model/WorkoutHours;-><init>(Lorg/json/JSONObject;Lcom/startapps/crossx/model/WorkoutModel;)V

    .line 330
    invoke-virtual {v2, v3}, Lcom/startapps/crossx/model/WorkoutModel;->addworkoutHours(Lcom/startapps/crossx/model/WorkoutHours;)V

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object v1, v1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 337
    :cond_6
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$morderListByDate(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)V

    .line 339
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetuserWorkoutAdapter(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object v0, v0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->setItems(Ljava/util/List;)V

    .line 340
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->listWorkoutClasses:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object p1, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 342
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetuserWorkoutAdapter(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->notifyDataSetChanged()V

    .line 344
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    iget-object v0, p1, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->workoutModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    move v0, p2

    :goto_5
    invoke-virtual {p1, v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->setHasOptionsMenu(Z)V

    .line 346
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    .line 347
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetuserWorkoutAdapter(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserWorkoutAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 349
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 350
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 351
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 352
    iget-object p1, p0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment$5;->this$0:Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-static {p1}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;->-$$Nest$fgetsearchView(Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->requestFocusFromTouch()Z

    :cond_8
    return-void
.end method
