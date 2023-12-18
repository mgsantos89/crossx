.class public abstract Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "AbstractWorkoutFragment.java"


# instance fields
.field protected isEditResult:Z

.field protected wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

.field protected wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

.field protected workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

.field protected workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;


# direct methods
.method static bridge synthetic -$$Nest$mdoSendEdiResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->doSendEdiResult(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoSendResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->doSendResult(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatResult(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->formatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowListCategorie(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->showListCategorie(Landroid/widget/Button;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method private doSendEdiResult(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    .line 319
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutModel;->getworkoutHours()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/startapps/crossx/model/WorkoutHours;

    iget-object v4, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    new-instance v7, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;

    .line 321
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v1, p0, v5, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$7;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;Ljava/util/Map;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    .line 319
    invoke-virtual/range {v0 .. v7}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->editResult(Ljava/util/Map;Lcom/startapps/crossx/model/WodsModel;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WokoutCategorie;Ljava/lang/String;ZLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private doSendResult(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 286
    new-instance v0, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v0, v1}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    .line 287
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    .line 288
    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutModel;->getWorkoutHoursIsCheckIn()Lcom/startapps/crossx/model/WorkoutHours;

    move-result-object v1

    :cond_0
    move-object v3, v1

    iget-object v4, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    new-instance v7, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$6;

    .line 290
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/view/activity/AbstractActivity;

    invoke-direct {v1, p0, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$6;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v7, v1}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    .line 287
    invoke-virtual/range {v0 .. v7}, Lcom/startapps/crossx/controller/network/requests/WorkoutRequester;->sendResult(Ljava/util/Map;Lcom/startapps/crossx/model/WodsModel;Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/model/WokoutCategorie;Ljava/lang/String;ZLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private formatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d.]"

    const-string v2, ""

    .line 62
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    array-length v1, v0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    const-string v2, "0"

    .line 63
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    .line 67
    sget-object v2, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 68
    :cond_3
    sget-object v2, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    .line 66
    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 71
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    .line 72
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s:%s:%s"

    .line 70
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNameCategoties()[Ljava/lang/String;
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 275
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->workoutModelSelected:Lcom/startapps/crossx/model/WorkoutModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WorkoutModel;->getAllCategories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/WokoutCategorie;

    .line 278
    invoke-virtual {v2}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/WodsModel;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    const v1, 0x7f0a00c2

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/Button;

    const v1, 0x7f0a00a8

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    const v1, 0x7f0a00a7

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    const v1, 0x7f0a00ad

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Button;

    const v1, 0x7f0a0273

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0274

    .line 104
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a017c

    .line 106
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f0a017b

    .line 107
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/widget/EditText;

    const v5, 0x7f0a0178

    .line 108
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 110
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    const v5, 0x7f1201b0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v11, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    invoke-virtual {v9, v5}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeId()J

    move-result-wide v13

    const-wide/16 v15, 0x4

    cmp-long v0, v13, v15

    const/4 v5, 0x2

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setVisibility(I)V

    const v0, 0x7f1202a6

    .line 123
    invoke-virtual {v9, v0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1202a3

    .line 124
    invoke-virtual {v9, v0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    iget-object v0, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tempo"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    const v0, 0x7f1202aa

    .line 135
    invoke-virtual {v9, v0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v0, Lcom/startapps/crossx/model/MaskTime;

    invoke-direct {v0, v4}, Lcom/startapps/crossx/model/MaskTime;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v0, v13, [Landroid/text/InputFilter;

    .line 138
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v14, 0x8

    invoke-direct {v1, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v8

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_1
    const-string v1, "carga"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    .line 141
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 145
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    :goto_1
    iget-boolean v0, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->isEditResult:Z

    if-eqz v0, :cond_8

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WodsModel;->getListResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v8

    .line 152
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 154
    iget-object v5, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WodsModel;->getListResults()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/UserResultModel;->allResults()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v14, 0x0

    .line 155
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "null"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object v5, v3

    :cond_4
    if-eqz v1, :cond_6

    if-eq v1, v13, :cond_5

    goto :goto_3

    .line 166
    :cond_5
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 162
    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_7
    iget-object v0, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WodsModel;->getListResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/UserResultModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserResultModel;->getResultObs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, v9, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wokoutCategorieSelected:Lcom/startapps/crossx/model/WokoutCategorie;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WokoutCategorie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_8
    new-instance v0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$1;

    invoke-direct {v0, v9, v2}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v13, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v12

    move-object/from16 v5, p3

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/Button;Lcom/startapps/crossx/model/WodsModel;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$3;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;

    invoke-direct {v0, v9, v12}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$4;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showListCategorie(Landroid/widget/Button;)V
    .locals 2

    .line 258
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120285

    .line 259
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 260
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getNameCategoties()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment$5;-><init>(Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;Landroid/widget/Button;)V

    .line 261
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method


# virtual methods
.method protected abstract onRefresh()V
.end method

.method protected abstract onUpdateResult(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected showViewResult(Lcom/startapps/crossx/model/WodsModel;)V
    .locals 3

    .line 77
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->wodsModelSelected:Lcom/startapps/crossx/model/WodsModel;

    .line 79
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WodsModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 92
    invoke-direct {p0, v1, v0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractWorkoutFragment;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/WodsModel;)V

    :cond_0
    return-void
.end method
