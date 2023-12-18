.class public Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "ExerciseDetailActivity_old.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/dacer/androidcharts/OnItemResult;


# instance fields
.field public HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

.field public addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field public btReverse:Landroid/widget/ImageButton;

.field public containerNamePr:Landroid/view/View;

.field public description:Landroid/widget/TextView;

.field private exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

.field private gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

.field private group:Ljava/lang/String;

.field private heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

.field private historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

.field public imageArrow:Landroid/widget/ImageView;

.field protected isChart:Z

.field protected isDescriptionExercises:Z

.field public labelPercentsPR:Landroid/widget/TextView;

.field public lineView:Lcom/dacer/androidcharts/LineView;

.field public listHistoric:Landroid/widget/ListView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mSelectedItem:I

.field public nameExercise:Landroid/widget/TextView;

.field private percents:[D

.field private personalRecordsDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/PersonalRecordsDetails;",
            ">;"
        }
    .end annotation
.end field

.field public progressBar:Landroid/widget/ProgressBar;

.field protected prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

.field private rersultTypeName:Ljava/lang/String;

.field public resultExercise:Landroid/widget/TextView;

.field public rlabelExercise:Landroid/widget/TextView;

.field public scrollViewExercises:Landroid/widget/ScrollView;

.field public slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

.field public squareGridView:Landroid/widget/GridView;

.field private stringListPercents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userModel:Lcom/startapps/crossx/model/UserModel;

.field public viewPercents:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetexercisesModel(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Lcom/startapps/crossx/model/ExercisesModel;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethistoricExerciseAdapter(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrersultTypeName(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$meditResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;JLjava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->editResult(JLjava/util/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->formatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPersonalRecordsDetails(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/model/ExercisesModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTotalHeightofListView(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getTotalHeightofListView(Landroid/widget/ListView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$morderPersonalRecordsByDate(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->orderPersonalRecordsByDate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrandomSet(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->randomSet()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResult(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->sendResult(Ljava/util/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [D

    .line 127
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->percents:[D

    return-void

    :array_0
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x3fb999999999999aL    # 0.1
        0x3fc3333333333333L    # 0.15
        0x3fc999999999999aL    # 0.2
        0x3fd0000000000000L    # 0.25
        0x3fd3333333333333L    # 0.3
        0x3fd6666666666666L    # 0.35
        0x3fd999999999999aL    # 0.4
        0x3fdccccccccccccdL    # 0.45
        0x3fe0000000000000L    # 0.5
        0x3fe199999999999aL    # 0.55
        0x3fe3333333333333L    # 0.6
        0x3fe4cccccccccccdL    # 0.65
        0x3fe6666666666666L    # 0.7
    .end array-data
.end method

.method private addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
    .locals 3

    .line 457
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->nameExercise:Landroid/widget/TextView;

    .line 460
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 461
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 462
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 465
    invoke-direct {p0, v1, v0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method private calcule(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 315
    :try_start_0
    new-instance v0, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    .line 317
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    .line 321
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    return-object p1
.end method

.method private calculePercentes(I)V
    .locals 11

    .line 251
    new-instance v0, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    .line 253
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v1

    if-nez v1, :cond_0

    int-to-double v0, p1

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    int-to-double v1, p1

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide v0

    :goto_0
    double-to-int p1, v0

    .line 257
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->percents:[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-wide v4, v0, v3

    .line 259
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->percents:[D

    aget-wide v7, v6, v2

    cmpl-double v6, v4, v7

    if-nez v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->stringListPercents:Ljava/util/List;

    int-to-double v7, p1

    mul-double v9, v7, v4

    add-double/2addr v7, v9

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->stringListPercents:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->stringListPercents:Ljava/util/List;

    int-to-double v7, p1

    mul-double/2addr v4, v7

    sub-double/2addr v7, v4

    double-to-int v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private deletePR()V
    .locals 6

    .line 563
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202ae

    .line 564
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 567
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    iget v3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mSelectedItem:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getId()J

    move-result-wide v2

    new-instance v4, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v5, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;

    invoke-direct {v5, p0, p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$6;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;)V

    invoke-direct {v4, v5}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->deletePersonalRecord(JLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    .line 592
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method private editResult(JLjava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 801
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->hideKeyboard()V

    .line 802
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 804
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f1202ae

    .line 805
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 806
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private formatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d.]"

    const-string v2, ""

    .line 472
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 473
    array-length v1, v0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 474
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    const-string v2, "0"

    .line 473
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    .line 477
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

    .line 478
    :cond_3
    sget-object v2, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    .line 476
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

    .line 480
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 481
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    .line 482
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s:%s:%s"

    .line 480
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMedida(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "carga"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "kg"

    goto :goto_0

    :cond_0
    const-string p1, "lbs"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V
    .locals 4

    .line 749
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->userModel:Lcom/startapps/crossx/model/UserModel;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$7;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/ExercisesModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private getTotalHeightofListView(Landroid/widget/ListView;)V
    .locals 7

    .line 432
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 436
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    .line 437
    invoke-interface {v0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 440
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 442
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 439
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 444
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 449
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method private inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
    .locals 9

    const v0, 0x7f0a0272

    .line 489
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0177

    .line 490
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0a017c

    .line 491
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    .line 493
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tempo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1202aa

    .line 494
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 495
    new-instance v1, Lcom/startapps/crossx/model/MaskTime;

    invoke-direct {v1, v7}, Lcom/startapps/crossx/model/MaskTime;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 497
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 500
    :cond_0
    new-instance v1, Lcom/startapps/crossx/model/MaskDate;

    invoke-direct {v1, v0}, Lcom/startapps/crossx/model/MaskDate;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f0a00a7

    .line 502
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;

    invoke-direct {v2, p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$4;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00a8

    .line 509
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v8, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$5;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;Landroid/widget/EditText;Lcom/startapps/crossx/model/PersonalRecordsDetails;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    const-string p2, "dd/MM/yyyy"

    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    if-eqz p3, :cond_1

    .line 557
    invoke-virtual {p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private orderPersonalRecordsByDate()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$2;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private randomSet()V
    .locals 7

    .line 689
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 692
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 695
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 697
    invoke-virtual {v4}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    const-string v6, "dd/MM/yyyy"

    .line 696
    invoke-static {v4, v5, v6}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 702
    :cond_0
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v3, v1}, Lcom/dacer/androidcharts/LineView;->setBottomTextList(Ljava/util/ArrayList;)V

    .line 703
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/dacer/androidcharts/LineView;->setDrawDotLine(Ljava/lang/Boolean;)V

    .line 704
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v1, v3}, Lcom/dacer/androidcharts/LineView;->setShowPopup(I)V

    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 707
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 709
    invoke-virtual {v4}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 712
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v1, v0}, Lcom/dacer/androidcharts/LineView;->setDataList(Ljava/util/ArrayList;)V

    .line 717
    iput-boolean v3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isChart:Z

    .line 719
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isDescriptionExercises:Z

    if-ne v1, v3, :cond_2

    .line 720
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 719
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 724
    :cond_3
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isChart:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isDescriptionExercises:Z

    if-eqz v0, :cond_4

    .line 725
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->btReverse:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 728
    :cond_4
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isChart:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isDescriptionExercises:Z

    if-nez v0, :cond_5

    .line 729
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->enableOptionOpenPanel()V

    :cond_5
    return-void
.end method

.method private sendResult(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 0

    .line 850
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->hideKeyboard()V

    return-void
.end method

.method private setupBestResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 415
    new-instance v0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$3;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$3;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 424
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->setupIfBarbel(Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 426
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getMedida(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupIfBarbel(Ljava/lang/String;)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->group:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "barbell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->stringListPercents:Ljava/util/List;

    .line 379
    new-instance v0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->stringListPercents:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    .line 381
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->squareGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 385
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->calculePercentes(I)V

    .line 386
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->viewPercents:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rlabelExercise:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 390
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->viewPercents:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->viewPercents:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addResultClick()V
    .locals 1

    const/4 v0, 0x0

    .line 681
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tempo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "[^\\d.]"

    const-string v3, ""

    .line 354
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "carga"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 364
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p1, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :catch_0
    return v2
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f120292

    .line 240
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected enableOptionOpenPanel()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->containerNamePr:Landroid/view/View;

    new-instance v1, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old$1;-><init>(Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getBestResult()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    :cond_1
    invoke-virtual {v2}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->calcule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v3}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getMedida(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->setupIfBarbel(Ljava/lang/String;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0030

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 246
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 647
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0a014f

    if-eq p1, p2, :cond_1

    const p2, 0x7f0a017d

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    iget p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mSelectedItem:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    goto :goto_0

    .line 655
    :cond_1
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->deletePR()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 161
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "exercise"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->finish()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ExercisesModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 169
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->group:Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    const/16 v0, 0x1f4

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelHeight(I)V

    .line 173
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    .line 175
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {p1, p0}, Lcom/dacer/androidcharts/LineView;->setOnItemResultListener(Lcom/dacer/androidcharts/OnItemResult;)V

    .line 177
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->defineToolbar()V

    .line 178
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V

    .line 180
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->setupIfBarbel(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rlabelExercise:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->nameExercise:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ExercisesModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 188
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->calcule(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 189
    invoke-virtual {v2}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getMedida(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->nameExercise:Landroid/widget/TextView;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->resultExercise:Landroid/widget/TextView;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->rlabelExercise:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->labelPercentsPR:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 203
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 209
    :goto_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 210
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 211
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 212
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->isDescriptionExercises:Z

    .line 216
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->scrollViewExercises:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/SlidingUpPanelLayout$PanelState;)V

    .line 220
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->enableOptionOpenPanel()V

    .line 223
    :cond_5
    new-instance p1, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {p1}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 636
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    const-string v0, ""

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e0009

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 625
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    iget v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mSelectedItem:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 p1, 0x0

    .line 627
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    const/4 p1, -0x1

    .line 628
    iput p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mSelectedItem:I

    .line 630
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemDataChart(I)Ljava/lang/String;
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tempo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 600
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 604
    :cond_0
    iput p3, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->mSelectedItem:I

    const/4 p1, 0x1

    .line 605
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 606
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 607
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->listHistoric:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 609
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 233
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reverse()V
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/ExerciseDetailActivity_old;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method
