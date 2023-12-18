.class public Lcom/startapps/crossx/view/activity/NewsActivity;
.super Lcom/startapps/crossx/view/activity/BaseActivity;
.source "NewsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public clickListener()V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/Intents;->goToRegisterCard(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/NewsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/utils/Preference;->setNewsStatus(Z)V

    return-void
.end method

.method public notKnow()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/NewsActivity;->onBackPressed()V

    return-void
.end method

.method protected setLayoutRes()I
    .locals 1

    const v0, 0x7f0d003b

    return v0
.end method
