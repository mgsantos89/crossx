.class public Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractFragment;
.source "TimerOptionsFragment.java"


# static fields
.field private static final DURATION_ANIMATION:I = 0xc8

.field private static TAG:Ljava/lang/String; = "TimerOptionsFragment"


# instance fields
.field protected buttonEmon:Landroid/widget/Button;

.field protected buttonStopWatch:Landroid/widget/Button;

.field protected buttonTabata:Landroid/widget/Button;

.field protected buttonTimer:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;-><init>()V

    return-void
.end method

.method private getPickerOptions()[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3c

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 230
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a03fc

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 177
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/controller/utils/Preference;->getTimerDelayInit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a008c

    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0092

    .line 180
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 182
    new-instance v2, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$1;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    new-instance v1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private showDialogoTimerCountdown()V
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00b8

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120152

    .line 165
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 168
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    .line 171
    invoke-direct {p0, v1, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V

    return-void
.end method

.method private showPickerTimerDelay()V
    .locals 3

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x7f120277

    .line 212
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getPickerOptions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const v1, 0x7f120278

    .line 213
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120152

    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;

    invoke-direct {v1}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;-><init>()V

    .line 215
    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 216
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getTimerDelayInit()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->setCurrentItem(I)V

    .line 217
    new-instance v0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$3;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$3;-><init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->setOnClickListener(Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/startapps/crossx/view/widget/picker/StringPickerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public endLoader()V
    .locals 0

    return-void
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0088

    return v0
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method protected onCLickEmon()V
    .locals 4

    .line 141
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Click"

    const-string v2, "Timers - Configura\u00e7\u00f5es"

    const-string v3, "Button"

    invoke-virtual {v0, v3, v1, v2}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/timer/EmonConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCLickStopWatch()V
    .locals 4

    .line 118
    new-instance v0, Lcom/startapps/crossx/model/ConfigChronometerModel;

    invoke-direct {v0}, Lcom/startapps/crossx/model/ConfigChronometerModel;-><init>()V

    .line 119
    sget-object v1, Lcom/startapps/crossx/model/enuns/TimerEnum;->STOPWATCH:Lcom/startapps/crossx/model/enuns/TimerEnum;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setType(Lcom/startapps/crossx/model/enuns/TimerEnum;)V

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Lcom/startapps/crossx/model/ConfigChronometerModel;->setIsCrescente(Z)V

    .line 122
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/startapps/crossx/view/activity/timer/ChronometerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "timer_config"

    .line 123
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCLickTabata(Landroid/view/View;)V
    .locals 3

    .line 152
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Click"

    const-string v1, "Timers - Configura\u00e7\u00f5es"

    const-string v2, "Button"

    invoke-virtual {p1, v2, v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/startapps/crossx/view/activity/timer/TabataConfigActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCLickTimer()V
    .locals 4

    .line 131
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Click"

    const-string v2, "Timers - Configura\u00e7\u00f5es"

    const-string v3, "Button"

    invoke-virtual {v0, v3, v1, v2}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/startapps/crossx/view/activity/timer/TimerConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object p1

    const-string v0, "Timers"

    invoke-virtual {p1, v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 96
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0011

    .line 98
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 91
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0488

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->showDialogoTimerCountdown()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonStopWatch:Landroid/widget/Button;

    const v0, 0x7f1201b0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTimer:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonEmon:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTabata:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonStopWatch:Landroid/widget/Button;

    const/16 p2, 0xc8

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 73
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTimer:Landroid/widget/Button;

    const/16 v0, 0x96

    invoke-static {p1, p2, v0, v1, v2}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 74
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonTabata:Landroid/widget/Button;

    invoke-static {p1, p2, p2, v1, v2}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    .line 75
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->buttonEmon:Landroid/widget/Button;

    const/16 v0, 0xfa

    invoke-static {p1, p2, v0, v1, v2}, Lcom/startapps/crossx/controller/utils/AnimationUtils;->zoomInAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
