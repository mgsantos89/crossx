.class public Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;
.super Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;
.source "TabataConfigActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;


# static fields
.field private static final PENDING_EXERCISES:Ljava/lang/String; = "exercises"

.field private static final PENDING_REST:Ljava/lang/String; = "rest"

.field private static final PENDING_ROUND:Ljava/lang/String; = "round"


# instance fields
.field protected breakSecond:Landroid/widget/EditText;

.field protected breakSecondTitle:Landroid/widget/TextView;

.field protected exercisesSecond:Landroid/widget/EditText;

.field protected exercisesSecondTitle:Landroid/widget/TextView;

.field protected initTimer:Landroid/widget/Button;

.field private pendingAdjust:Ljava/lang/String;

.field protected root:Landroid/widget/LinearLayout;

.field protected roundTotal:Landroid/widget/EditText;

.field protected roundTotalTitle:Landroid/widget/TextView;

.field protected scrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 4

    .line 95
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecondTitle:Landroid/widget/TextView;

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecondTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotalTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0044

    return v0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "exercises"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "rest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onClickInitTimer()V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->hideKeyboard()V

    .line 109
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12019b

    .line 110
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->notification(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120268

    .line 115
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->notification(Ljava/lang/String;)V

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f120198

    .line 120
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->notification(Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    new-instance v0, Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;-><init>()V

    .line 125
    sget-object v1, Lcom/startapps/crossx/model/enuns/TimerEnum;->TABATA:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setType(Lcom/startapps/crossx/model/enuns/TimerEnum;)V

    .line 126
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->exercisesSecond:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setSecondExercise(I)V

    .line 127
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->breakSecond:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setSecondsBreak(I)V

    .line 128
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->roundTotal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setRound(I)V

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setIsCrescente(Z)V

    .line 131
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "timer_config"

    .line 132
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0, v1, v1}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Timers - Tabata"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120279

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;->setTitleActionBar(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 89
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onStart()V

    return-void
.end method
