.class public Lcom/startapps/crossx/view/activity/PersonalRecordActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "PersonalRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/ActionMode$Callback;
.implements Lcom/dacer/androidcharts/OnItemResult;
.implements Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;
.implements Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;


# instance fields
.field public HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

.field public addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field public btReverse:Landroid/widget/ImageButton;

.field private categoryID:I

.field public containerNamePr:Landroid/view/View;

.field public description:Landroid/widget/TextView;

.field private exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

.field private gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

.field private group:Ljava/lang/String;

.field private hasRxScaled:Z

.field private heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

.field private historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

.field public imageArrow:Landroid/widget/ImageView;

.field protected isChart:Z

.field protected isDescriptionExercises:Z

.field public labelPercentsPR:Landroid/widget/TextView;

.field public lineView:Lcom/dacer/androidcharts/LineView;

.field public listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

.field private mActionMode:Landroid/view/ActionMode;

.field private mSelectedItem:I

.field public nameExercise:Landroid/widget/TextView;

.field private final percents:[D

.field private final personalRecordsDetailsList:Ljava/util/List;
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

.field public slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

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
.method static bridge synthetic -$$Nest$fgetcategoryID(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->categoryID:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexercisesModel(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Lcom/startapps/crossx/model/ExercisesModel;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionMode(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpersonalRecordsDetailsList(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrersultTypeName(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcategoryID(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->categoryID:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasRxScaled(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hasRxScaled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$meditResult(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/util/Calendar;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->editResult(Ljava/util/Calendar;JLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mformatResultToPost(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->formatResultToPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPersonalRecordsDetails(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/model/ExercisesModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResult(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/util/Calendar;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->sendResult(Ljava/util/Calendar;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupBestResult(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setupBestResult(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowListCategorie(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->showListCategorie(Landroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUI(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [D

    .line 137
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->percents:[D

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->categoryID:I

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hasRxScaled:Z

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

    .line 423
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 425
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->nameExercise:Landroid/widget/TextView;

    .line 426
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 427
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 428
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 431
    invoke-direct {p0, v1, v0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method private calculePercentes(D)V
    .locals 10

    .line 277
    new-instance v0, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    .line 279
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide p1

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->percents:[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-wide v4, v0, v3

    .line 285
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->percents:[D

    aget-wide v7, v6, v2

    cmpl-double v6, v4, v7

    const-string v7, "%.2f"

    if-nez v6, :cond_1

    .line 287
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->stringListPercents:Ljava/util/List;

    mul-double v8, p1, v4

    add-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->stringListPercents:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_1
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->stringListPercents:Ljava/util/List;

    mul-double/2addr v4, p1

    sub-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private convertToKlIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ","

    const-string v1, "."

    .line 459
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->lbToKgConverter(D)D

    move-result-wide v0

    .line 461
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deletePR()V
    .locals 5

    .line 952
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    iget v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getId()J

    move-result-wide v1

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$9;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$9;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->deletePersonalRecord(JLcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private editResult(Ljava/util/Calendar;JLjava/lang/String;ILjava/lang/String;)V
    .locals 11

    move-object v0, p0

    .line 1032
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hideKeyboard()V

    .line 1033
    iget-object v1, v0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1034
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 1037
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1202ae

    .line 1038
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1039
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1041
    iget-object v3, v0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object v4, p1

    .line 1042
    invoke-static {p1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v2, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;

    move-object v7, p4

    invoke-direct {v2, p0, p0, v1, p4}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$11;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-direct {v10, v2}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    move-wide v4, p2

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 1041
    invoke-virtual/range {v3 .. v10}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->editPersonalRecord(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private formatResultToPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "carga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "tempo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 447
    :cond_0
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->formatTypeTimeToPost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->convertToKlIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatTypeTimeToPost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ":"

    .line 469
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\d.]"

    const-string v2, ""

    .line 471
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 472
    array-length v1, v0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 473
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    const-string v2, "0"

    .line 472
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    .line 476
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

    .line 477
    :cond_3
    sget-object v2, Lcom/startapps/crossx/model/MaskTime;->MASK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    .line 475
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

.method private getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V
    .locals 4

    .line 980
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$10;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/UserModel;Lcom/startapps/crossx/model/ExercisesModel;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private getTotalHeightofListView(Landroid/widget/ListView;)V
    .locals 7

    .line 681
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 685
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    .line 686
    invoke-interface {v0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 689
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 691
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 688
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 693
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 699
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    return-void
.end method

.method private inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const v1, 0x7f0a0272

    .line 488
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0177

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    const v1, 0x7f0a017c

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    const v1, 0x7f0a0178

    .line 491
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    const v1, 0x7f0a026c

    .line 492
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a00c2

    .line 493
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    .line 495
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v2

    const v3, 0x7f1201b0

    invoke-virtual {v7, v3}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 497
    iget-boolean v2, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hasRxScaled:Z

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 498
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    invoke-virtual {v11, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    :cond_0
    iget-object v1, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    const-string/jumbo v2, "tempo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    const v1, 0x7f1202aa

    .line 503
    invoke-virtual {v7, v1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 504
    new-instance v1, Lcom/startapps/crossx/model/MaskTime;

    invoke-direct {v1, v9}, Lcom/startapps/crossx/model/MaskTime;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v1, v13, [Landroid/text/InputFilter;

    .line 506
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v12

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 507
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 508
    :cond_1
    iget-object v1, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    const-string v3, "carga"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2002

    .line 509
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 511
    :cond_2
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 514
    :goto_0
    new-instance v1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;

    invoke-direct {v1, v7, v11}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance v1, Lcom/startapps/crossx/model/MaskDate;

    invoke-direct {v1, v8}, Lcom/startapps/crossx/model/MaskDate;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f0a00a7

    .line 523
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$4;

    move-object/from16 v6, p1

    invoke-direct {v2, v7, v6}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$4;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00a8

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$5;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/startapps/crossx/model/PersonalRecordsDetails;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setSelection(I)V

    if-eqz p3, :cond_5

    .line 618
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 620
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, ""

    .line 622
    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getType()I

    move-result v0

    iput v0, v7, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->categoryID:I

    .line 625
    invoke-virtual/range {p3 .. p3}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getType()I

    move-result v0

    if-ne v0, v13, :cond_4

    const-string v0, "RX"

    goto :goto_2

    :cond_4
    const-string v0, "SCALED"

    :goto_2
    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a03fd

    .line 735
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03fe

    .line 736
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a008d

    .line 738
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a008e

    .line 739
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 741
    new-instance v3, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    new-instance p2, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$8;

    invoke-direct {p2, p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$8;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    iget p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    .line 759
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    const-string v2, "."

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 762
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getMeasureUnity()I

    move-result v2

    const-string v3, "%.2f"

    if-nez v2, :cond_0

    .line 764
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->kgToLbConverter(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 769
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-virtual {v2, p1, p2}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;->lbToKgConverter(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private loadChart()V
    .locals 8

    .line 874
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v0, v1, :cond_3

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 877
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 882
    invoke-virtual {v5}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getDate()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    const-string v7, "dd/MM/yyyy"

    .line 881
    invoke-static {v5, v6, v7}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 887
    :cond_0
    iget-object v4, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v4, v1}, Lcom/dacer/androidcharts/LineView;->setBottomTextList(Ljava/util/ArrayList;)V

    .line 888
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->lineView:Lcom/dacer/androidcharts/LineView;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/dacer/androidcharts/LineView;->setDrawDotLine(Ljava/lang/Boolean;)V

    .line 889
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v1, v4}, Lcom/dacer/androidcharts/LineView;->setShowPopup(I)V

    .line 891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 892
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 894
    invoke-virtual {v5}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 897
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {v1, v0}, Lcom/dacer/androidcharts/LineView;->setDataList(Ljava/util/ArrayList;)V

    .line 902
    iput-boolean v4, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isChart:Z

    .line 904
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isDescriptionExercises:Z

    if-ne v1, v4, :cond_2

    .line 905
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 904
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_3

    .line 909
    :cond_3
    iput-boolean v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isChart:Z

    .line 910
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 913
    :goto_3
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isChart:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isDescriptionExercises:Z

    if-eqz v0, :cond_4

    .line 914
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->btReverse:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_4

    .line 916
    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->btReverse:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 919
    :goto_4
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isChart:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isDescriptionExercises:Z

    if-nez v0, :cond_5

    .line 920
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->enableOptionOpenPanel()V

    goto :goto_5

    .line 922
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->imageArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->containerNamePr:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method private orderPersonalRecordsByDate()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    new-instance v1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$2;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sendResult(Ljava/util/Calendar;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1083
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hideKeyboard()V

    .line 1085
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    .line 1086
    invoke-static {p1, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance p1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$12;

    invoke-direct {p1, p0, p0, p2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$12;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;Ljava/lang/String;)V

    invoke-direct {v6, p1}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 1085
    invoke-virtual/range {v0 .. v6}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;->sendPersonalRecord(Lcom/startapps/crossx/model/ExercisesModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private setupBestResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 347
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setupIfBarbel(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->resultExercise:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupIfBarbel(Ljava/lang/String;)V
    .locals 4

    .line 359
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->group:Ljava/lang/String;

    const-string v1, "barbell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->stringListPercents:Ljava/util/List;

    .line 363
    new-instance v0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->stringListPercents:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->gridresultsPercentsAdapter:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    .line 365
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->squareGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 369
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->calculePercentes(D)V

    .line 370
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->viewPercents:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rlabelExercise:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 375
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->viewPercents:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->viewPercents:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showDialogConversor()V
    .locals 3

    const-string v0, "layout_inflater"

    .line 720
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00b9

    const/4 v2, 0x0

    .line 721
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 723
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1202b3

    .line 724
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 725
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 726
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 727
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 728
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 730
    invoke-direct {p0, v1, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method private showListCategorie(Landroid/widget/Button;)V
    .locals 3

    const-string v0, "RX"

    const-string v1, "SCALED"

    .line 632
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 634
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120285

    .line 635
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 636
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;[Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 644
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setBestResult()V

    .line 708
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->orderPersonalRecordsByDate()V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->setResultType(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    .line 714
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getTotalHeightofListView(Landroid/widget/ListView;)V

    .line 715
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->loadChart()V

    return-void
.end method


# virtual methods
.method public addResultClick()V
    .locals 4

    .line 865
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Click"

    const-string v2, "PR - Adicionar resultado"

    const-string v3, "Button"

    invoke-virtual {v0, v3, v1, v2}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    const-string v1, "[^\\d.]"

    const/4 v2, 0x0

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    const-string/jumbo v4, "tempo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 394
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    const-string v1, "carga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
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

    move v2, v4

    :cond_2
    return v2

    .line 398
    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p1, p2, :cond_4

    move v2, v4

    :cond_4
    return v2

    :catch_0
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NumberFormatException -> "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "compare"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected defineFonts()V
    .locals 0

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f120292

    .line 261
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected enableOptionOpenPanel()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->imageArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->containerNamePr:Landroid/view/View;

    new-instance v1, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$1;-><init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0030

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 272
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 818
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f0a0127

    if-eq p1, p2, :cond_2

    const p2, 0x7f0a014f

    if-eq p1, p2, :cond_1

    const p2, 0x7f0a017d

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    iget p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    goto :goto_0

    .line 829
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string p2, "Click"

    const-string v0, "Remover resultado"

    const-string v1, "Button"

    invoke-virtual {p1, v1, p2, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->deletePR()V

    .line 831
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setEditing(Z)V

    .line 836
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_3

    .line 837
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClickPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
    .locals 0

    .line 1149
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method public onCommitEditingStyle(I)V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1136
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 1137
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 173
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "PR Detalhe"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "exercise"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->finish()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/ExercisesModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 182
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "user_model"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/UserModel;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    .line 183
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->group:Ljava/lang/String;

    .line 185
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/PRSRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->prsRequester:Lcom/startapps/crossx/controller/network/requests/PRSRequester;

    .line 187
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->lineView:Lcom/dacer/androidcharts/LineView;

    invoke-virtual {p1, p0}, Lcom/dacer/androidcharts/LineView;->setOnItemResultListener(Lcom/dacer/androidcharts/OnItemResult;)V

    .line 189
    new-instance p1, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    invoke-direct {p1}, Lcom/startapps/crossx/controller/utils/HeightWeightHelper;-><init>()V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->heightWeightHelper:Lcom/startapps/crossx/controller/utils/HeightWeightHelper;

    .line 191
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->defineToolbar()V

    .line 193
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rlabelExercise:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rersultTypeName:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->nameExercise:Landroid/widget/TextView;

    const v2, 0x7f1201ae

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->resultExercise:Landroid/widget/TextView;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->rlabelExercise:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->labelPercentsPR:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setOnEditingListViewListener(Lcom/startapps/crossx/view/widget/listview/EditingListView$OnEditingListViewListener;)V

    .line 206
    new-instance p1, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-direct {p1, p0, v1, p0}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnPersonalRecordListener;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    .line 207
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {v1, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->userModel:Lcom/startapps/crossx/model/UserModel;

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 213
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addResultButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_3
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 221
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 222
    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 223
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getBestDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->description:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->isDescriptionExercises:Z

    .line 227
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->scrollViewExercises:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->imageArrow:Landroid/widget/ImageView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->slidingUpPanelLayout:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;

    sget-object v0, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;->COLLAPSED:Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout;->setPanelState(Lcom/startapps/crossx/view/panel/CrossxSlidingUpPanelLayout$State;)V

    .line 232
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->enableOptionOpenPanel()V

    .line 235
    :cond_4
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setupHeaderPrUI()V

    .line 236
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setupIfBarbel(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->getPersonalRecordsDetails(Lcom/startapps/crossx/model/ExercisesModel;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 797
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    const-string v0, ""

    .line 799
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 810
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e0009

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 242
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 243
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 786
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    iget v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setItemChecked(IZ)V

    const/4 p1, 0x0

    .line 788
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    const/4 p1, -0x1

    .line 789
    iput p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    .line 791
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 666
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    return-void

    .line 670
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    .line 671
    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->addOrEditPR(Lcom/startapps/crossx/model/PersonalRecordsDetails;)V

    return-void
.end method

.method public onItemDataChart(I)Ljava/lang/String;
    .locals 2

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 932
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 934
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 936
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    .line 937
    invoke-virtual {v0}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 936
    invoke-static {p1, v0, v1}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

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

    .line 650
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 654
    :cond_0
    iput p3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    const/4 p1, 0x1

    .line 655
    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 656
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {p2, p3, p1}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->setItemChecked(IZ)V

    .line 657
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->listHistoric:Lcom/startapps/crossx/view/widget/listview/EditingListView;

    invoke-virtual {p2, p0}, Lcom/startapps/crossx/view/widget/listview/EditingListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 659
    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->historicExerciseAdapter:Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/HistoricExerciseAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 249
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 254
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRemoveCellAtIndex()I
    .locals 1

    .line 1129
    iget v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->mSelectedItem:I

    return v0
.end method

.method public onRemoveCellFinish()V
    .locals 0

    .line 1144
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->updateUI()V

    return-void
.end method

.method public reverse()V
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->HorizontalScrollViewGrafic:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected setBestResult()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->personalRecordsDetailsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/model/PersonalRecordsDetails;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/PersonalRecordsDetails;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->resultExercise:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-direct {p0, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->setupIfBarbel(Ljava/lang/String;)V

    return-void
.end method

.method protected setupHeaderPrUI()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->nameExercise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ExercisesModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->resultExercise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/ExercisesModel;->getBestResult()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->exercisesModel:Lcom/startapps/crossx/model/ExercisesModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/ExercisesModel;->getResultTypeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/PersonalRecordsUtils;->formatPRSFromType(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
