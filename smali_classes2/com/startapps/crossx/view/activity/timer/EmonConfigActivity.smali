.class public Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;
.super Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;
.source "EmonConfigActivity.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;


# static fields
.field private static final PENDING_MINUTES:Ljava/lang/String; = "minutes"

.field private static final PENDING_ROUND:Ljava/lang/String; = "round"

.field private static final PENDING_SECONDS:Ljava/lang/String; = "seconds"


# instance fields
.field protected initTimer:Landroid/widget/Button;

.field protected minutes:Landroid/widget/EditText;

.field protected minutesTitle:Landroid/widget/TextView;

.field private pendingAdjust:Ljava/lang/String;

.field protected round:Landroid/widget/EditText;

.field protected roundTitle:Landroid/widget/TextView;

.field protected seconds:Landroid/widget/EditText;

.field protected secondsTitle:Landroid/widget/TextView;

.field protected timeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected btInitEmon()V
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->hideKeyboard()V

    .line 108
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "0"

    if-eqz v3, :cond_0

    move-object v0, v4

    .line 115
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v4

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->round:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->round:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f120199

    .line 139
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->notification(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_4
    :goto_0
    new-instance v2, Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-direct {v2}, Lcom/startapps/crossx/model/ConfigChronometerModel;-><init>()V

    .line 127
    sget-object v3, Lcom/startapps/crossx/model/enuns/TimerEnum;->EMON:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setType(Lcom/startapps/crossx/model/enuns/TimerEnum;)V

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setMinutes(I)V

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setSeconds(I)V

    .line 130
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->round:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setRound(I)V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setIsCrescente(Z)V

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "timer_config"

    .line 134
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0, v0, v0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->overridePendingTransition(II)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const v0, 0x7f120198

    .line 120
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->notification(Ljava/lang/String;)V

    return-void
.end method

.method protected defineFonts()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->roundTitle:Landroid/widget/TextView;

    const v2, 0x7f1201b0

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->timeTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->minutesTitle:Landroid/widget/TextView;

    const v2, 0x7f1201af

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->secondsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method protected getToLayoutInflate()I
    .locals 1

    const v0, 0x7f0d002f

    return v0
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->minutes:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "seconds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->seconds:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->pendingAdjust:Ljava/lang/String;

    const-string v1, "round"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->round:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Timers - EMOM"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120190

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;->setTitleActionBar(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 67
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 68
    invoke-super {p0}, Lcom/startapps/crossx/view/activity/timer/AbstractTimerActivity;->onDestroy()V

    return-void
.end method
