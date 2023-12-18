.class public Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;
.super Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;
.source "TimerConfigActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;


# static fields
.field private static final PENDING_MINUTES:Ljava/lang/String; = "minutes"

.field private static final PENDING_SECONDS:Ljava/lang/String; = "seconds"


# instance fields
.field protected checkCrescente:Landroid/widget/CheckBox;

.field private checkCrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected checkDecrescente:Landroid/widget/CheckBox;

.field private checkDecrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected initTimer:Landroid/widget/Button;

.field protected minutes:Landroid/widget/EditText;

.field protected minutesTitle:Landroid/widget/TextView;

.field private pendingAdjust:Ljava/lang/String;

.field protected seconds:Landroid/widget/EditText;

.field protected secondsTitle:Landroid/widget/TextView;

.field protected timeTitle:Landroid/widget/TextView;

.field protected typeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;-><init>()V

    .line 114
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$1;-><init>(Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 126
    new-instance v0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity$2;-><init>(Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method protected defineFonts()V
    .locals 4

    .line 71
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescente:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutesTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->secondsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->typeTitle:Landroid/widget/TextView;

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->timeTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d0046

    return v0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "seconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onClickInitTimer()V
    .locals 5

    .line 142
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->hideKeyboard()V

    .line 144
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_0

    move-object v0, v4

    .line 151
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v4

    .line 155
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f120199

    .line 170
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->notification(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_3
    :goto_0
    new-instance v2, Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-direct {v2}, Lcom/startapps/crossx/model/ConfigChronometerModel;-><init>()V

    .line 158
    sget-object v3, Lcom/startapps/crossx/model/enuns/TimerEnum;->TIMER:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setType(Lcom/startapps/crossx/model/enuns/TimerEnum;)V

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setMinutes(I)V

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setSeconds(I)V

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setIsCrescente(Z)V

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "timer_config"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0, v0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Timers - Timer"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1202b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->setTitleActionBar(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescente:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkCrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescente:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;->checkDecrescenteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 111
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onDestroy()V

    return-void
.end method
