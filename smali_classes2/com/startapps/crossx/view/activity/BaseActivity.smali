.class public abstract Lcom/startapps/crossx/view/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field public broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private dialogLoading:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 36
    new-instance v0, Lcom/startapps/crossx/view/activity/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/activity/BaseActivity$1;-><init>(Lcom/startapps/crossx/view/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract init()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->setLayoutRes()I

    move-result v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 85
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->setupToolbar()V

    .line 86
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/DialogUtils;->buildWaitDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/view/activity/BaseActivity;->dialogLoading:Landroid/app/Dialog;

    .line 87
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "broadcast_payment_polling"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 91
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 96
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/startapps/crossx/view/activity/BaseActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected abstract setLayoutRes()I
.end method

.method public setToolbarTitle(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 2

    .line 114
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/BaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 115
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    const/4 p2, -0x1

    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 119
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x1

    .line 120
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const v1, 0x7f1201b0

    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected showToast(I)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
