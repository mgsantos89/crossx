.class public Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "WorkoutHourDetailActivity.java"

# interfaces
.implements Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;
    }
.end annotation


# instance fields
.field public buttonCheckIn:Landroid/widget/Button;

.field private buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

.field private cancelCheckinProgramEnable:Z

.field private checkinCancel:Z

.field private checkinEnable:Z

.field private checkinRequester:Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

.field public dayMonth:Landroid/widget/TextView;

.field public dayWeek:Landroid/widget/TextView;

.field protected gympassLabel:Landroid/widget/TextView;

.field protected gympassTokenField:Landroid/widget/EditText;

.field protected gympassView:Landroid/widget/LinearLayout;

.field public hour:Landroid/widget/TextView;

.field private hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

.field public imageView:Landroid/widget/ImageView;

.field protected imageWarning:Landroid/widget/ImageView;

.field public limit:Landroid/widget/TextView;

.field public listView:Landroid/widget/ListView;

.field public messageBar:Landroid/widget/TextView;

.field public nameCoach:Landroid/widget/TextView;

.field public nameProgram:Landroid/widget/TextView;

.field private userCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

.field private workoutHours:Lcom/startapps/crossx/model/WorkoutHours;


# direct methods
.method static bridge synthetic -$$Nest$fgetworkoutHours(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)Lcom/startapps/crossx/model/WorkoutHours;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCheckIn(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doCheckIn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialogMessage(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->showDialogMessage(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    .line 75
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    return-void
.end method

.method private doAlterCheckIn()V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinRequester:Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$4;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$4;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->alterCheckin(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private doCheckIn()V
    .locals 5

    .line 469
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hideKeyboard()V

    .line 471
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinRequester:Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    .line 472
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v4, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;

    invoke-direct {v4, p0, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$3;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v3, v4}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    .line 471
    invoke-virtual {v0, v1, v2, v3}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->checkin(Lcom/startapps/crossx/model/WorkoutHours;Ljava/lang/String;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method private setupButtons()V
    .locals 8

    .line 327
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableCheckin()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isCheckinEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinEnable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->cancelCheckinProgramEnable:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    .line 344
    :goto_1
    iget-object v4, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    iget-object v4, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v4}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 352
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->REMOVE_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 358
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    const v1, 0x7f120281

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_9

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 362
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ALTER_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 367
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    const v1, 0x7f12027d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_9

    .line 371
    :cond_8
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 376
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    const v1, 0x7f120293

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_9

    .line 381
    :cond_9
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinEnable:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->overflowLimit()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    .line 382
    :goto_4
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->overflowLimit()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableWaitingLIst()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v3

    .line 385
    :goto_6
    iget-boolean v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinCancel:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->cancelCheckinProgramEnable:Z

    if-nez v5, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    move v2, v3

    .line 387
    :goto_7
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    if-nez v0, :cond_f

    if-eqz v2, :cond_10

    :cond_f
    move v1, v3

    :cond_10
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_11

    .line 390
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    const v1, 0x7f12011d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 392
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_13

    if-eqz v4, :cond_12

    const v0, 0x7f1201f8

    goto :goto_8

    :cond_12
    const v0, 0x7f1201f7

    .line 397
    :goto_8
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 399
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    :goto_9
    return-void
.end method

.method private setupDetailView()V
    .locals 10

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCheckin()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v0

    const-string v1, ""

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getGympassUniqueToken()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_2

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getGympassUniqueToken()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    :cond_5
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    move v0, v4

    .line 197
    :goto_2
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapps/crossx/controller/utils/Preference;->getGympassUniqueToken()Ljava/lang/String;

    move-result-object v5

    if-eq v5, v1, :cond_7

    move v0, v2

    .line 201
    :cond_7
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapps/crossx/controller/utils/Preference;->getGympassUniqueToken()Ljava/lang/String;

    .line 205
    :cond_8
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCheckin()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 207
    iget-boolean v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinEnable:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    iget-boolean v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->cancelCheckinProgramEnable:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    move v5, v2

    goto :goto_4

    :cond_b
    :goto_3
    move v5, v4

    .line 210
    :goto_4
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    if-eqz v5, :cond_c

    move v7, v2

    goto :goto_5

    :cond_c
    move v7, v3

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v6, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v8}, Lcom/startapps/crossx/model/WorkoutHours;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    move v6, v4

    goto :goto_6

    :cond_d
    move v6, v2

    :goto_6
    if-eqz v5, :cond_1a

    .line 217
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->getMyCheckin()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v5

    sget-object v7, Lcom/startapps/crossx/model/enuns/CheckinStatus;->RESERVED:Lcom/startapps/crossx/model/enuns/CheckinStatus;

    invoke-virtual {v7}, Lcom/startapps/crossx/model/enuns/CheckinStatus;->getStatus()I

    move-result v7

    if-ne v5, v7, :cond_e

    move v4, v2

    .line 221
    :cond_e
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v5

    const v7, 0x7f120298

    const v8, 0x7f120299

    if-eqz v5, :cond_11

    if-eqz v6, :cond_11

    .line 223
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->REMOVE_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 224
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    if-eqz v4, :cond_f

    const v1, 0x7f120281

    goto :goto_7

    :cond_f
    const v1, 0x7f120282

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    move v7, v8

    :goto_8
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_14

    .line 237
    :cond_11
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v5}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 239
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ALTER_CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 240
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    if-eqz v4, :cond_12

    const v1, 0x7f12027d

    goto :goto_9

    :cond_12
    const v1, 0x7f12027e

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 247
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    goto :goto_a

    :cond_13
    move v7, v8

    :goto_a
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_14

    .line 253
    :cond_14
    sget-object v5, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->CHECKIN:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    iput-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    .line 254
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    if-eqz v4, :cond_15

    const v6, 0x7f120293

    goto :goto_b

    :cond_15
    const v6, 0x7f120294

    :goto_b
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 261
    iget-object v5, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v6}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v6

    if-eqz v6, :cond_16

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_c

    :cond_16
    move v0, v3

    :goto_c
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableGympass()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 264
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isGympassCheckinOnly()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 265
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getGympassUniqueToken()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v1, :cond_18

    .line 266
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_17

    goto :goto_d

    :cond_17
    move v7, v8

    :goto_d
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_14

    .line 269
    :cond_18
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14

    .line 272
    :cond_19
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_14

    .line 280
    :cond_1a
    iget-boolean v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinEnable:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->overflowLimit()Z

    move-result v0

    if-nez v0, :cond_1b

    move v0, v4

    goto :goto_e

    :cond_1b
    move v0, v2

    .line 281
    :goto_e
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_f

    :cond_1c
    move v0, v3

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->overflowLimit()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableWaitingLIst()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v4

    goto :goto_10

    :cond_1d
    move v0, v2

    .line 284
    :goto_10
    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinCancel:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->cancelCheckinProgramEnable:Z

    if-nez v1, :cond_1f

    :cond_1e
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->isDidCheckin()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_11

    :cond_1f
    move v4, v2

    .line 286
    :goto_11
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    if-nez v0, :cond_21

    if-eqz v4, :cond_20

    goto :goto_12

    :cond_20
    move v2, v3

    :cond_21
    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_22

    .line 289
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    const v1, 0x7f12011d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 291
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_14

    :cond_22
    if-eqz v4, :cond_24

    if-eqz v6, :cond_23

    const v0, 0x7f1201f8

    goto :goto_13

    :cond_23
    const v0, 0x7f1201f7

    .line 296
    :goto_13
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 297
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 298
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    :cond_24
    :goto_14
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableCheckin()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 304
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageWarning:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 312
    :cond_25
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassTokenField:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->gympassView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_26
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSentResult BBB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->isEnableCheckin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSentResult"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setupView()V
    .locals 4

    .line 409
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->imageView:Landroid/widget/ImageView;

    const v3, 0x7f080172

    .line 410
    invoke-static {v3}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 409
    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 412
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayWeek:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EEE"

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {v1, v3, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->dayMonth:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getDate()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dd"

    invoke-static {v1, v3, v2}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameCoach:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getCoach()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->nameProgram:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v1}, Lcom/startapps/crossx/model/WorkoutHours;->getNameWorkout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hour:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WorkoutHours;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/WorkoutHours;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->limit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->formtCheckIns(Lcom/startapps/crossx/model/WorkoutHours;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDialogMessage(Ljava/lang/String;)V
    .locals 1

    .line 440
    new-instance v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$1;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V

    invoke-static {p0, p1, v0}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessageNoNegativeObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 4

    .line 104
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonCheckIn:Landroid/widget/Button;

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->messageBar:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected defineToolbar()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f1201b7

    .line 170
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->setTitleActionBar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doRemoveCheckIn()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinRequester:Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    new-instance v2, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;

    new-instance v3, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;

    invoke-direct {v3, p0, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$2;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    invoke-direct {v2, v3}, Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;-><init>(Lcom/startapps/crossx/controller/network/listerners/AbstractBasicListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;->removeCheckin(Lcom/startapps/crossx/model/WorkoutHours;Lcom/startapps/crossx/controller/network/transformer/BasicTransformer;)V

    return-void
.end method

.method public endLoader()V
    .locals 2

    const v0, 0x7f0a0122

    .line 97
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0349

    .line 98
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected formtCheckIns(Lcom/startapps/crossx/model/WorkoutHours;)Ljava/lang/String;
    .locals 3

    .line 423
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 424
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v1

    if-lez v1, :cond_1

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const v0, 0x7f1202ab

    .line 430
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 434
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120286

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d004c

    return v0
.end method

.method protected goBack()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->finish()V

    return-void
.end method

.method public initLoader()V
    .locals 2

    const v0, 0x7f0a0122

    .line 91
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0349

    .line 92
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClickUserListener(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 561
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 562
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 564
    invoke-static {p0, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->defineToolbar()V

    .line 113
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Wods - Lista de Hor\u00c3\u00a1rios"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WorkoutHours"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->finish()V

    return-void

    .line 120
    :cond_0
    new-instance p1, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/network/requests/CheckinRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinRequester:Lcom/startapps/crossx/controller/network/requests/CheckinRequester;

    .line 121
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "WorkoutHoursCheckIn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/WorkoutHours;

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->hourCheckIn:Lcom/startapps/crossx/model/WorkoutHours;

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCancel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->cancelCheckinProgramEnable:Z

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    if-eqz p1, :cond_2

    .line 130
    new-instance p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->getUsersList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->userCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    .line 131
    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->setOnClickUserCheckinListener(Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;)V

    .line 132
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->userCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->getLimit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->setTotalVacancies(I)V

    .line 133
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->userCheckinAdapter:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->isCheckinEnable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinEnable:Z

    .line 136
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCancel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->checkinCancel:Z

    .line 138
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->setupView()V

    .line 139
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->setupDetailView()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 152
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onDestroy()V

    return-void
.end method

.method public onLCickButtonCheckin()V
    .locals 4

    .line 518
    sget-object v0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$7;->$SwitchMap$com$startapps$crossx$view$activity$WorkoutHourDetailActivity$ButtonFunction:[I

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->buttonFunction:Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;

    invoke-virtual {v1}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$ButtonFunction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "Click"

    const-string v3, "Button"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Check-in - Remover Check-in"

    invoke-virtual {v0, v3, v2, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doRemoveCheckIn()V

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Check-in - Alterar Check-in\u00e2\u20ac\u009d"

    invoke-virtual {v0, v3, v2, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doAlterCheckIn()V

    goto :goto_0

    :cond_2
    const v0, 0x7f120123

    .line 542
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$6;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V

    invoke-static {p0, v0, v1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessageNoNegativeObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V

    goto :goto_0

    .line 521
    :cond_3
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Check-in - Check-in"

    invoke-virtual {v0, v3, v2, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->workoutHours:Lcom/startapps/crossx/model/WorkoutHours;

    invoke-virtual {v0}, Lcom/startapps/crossx/model/WorkoutHours;->isAllowCancel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 524
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->doCheckIn()V

    goto :goto_0

    :cond_4
    const v0, 0x7f120124

    .line 526
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity$5;-><init>(Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;)V

    invoke-static {p0, v0, v1}, Lcom/startapps/crossx/controller/utils/CRXAlertUtil;->showDialogMessageNoNegativeObserver(Landroid/content/Context;Ljava/lang/String;Lcom/startapps/crossx/controller/utils/CRXAlertUtil$AlertCallback;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 163
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/WorkoutHourDetailActivity;->goBack()V

    const/4 p1, 0x1

    return p1
.end method
