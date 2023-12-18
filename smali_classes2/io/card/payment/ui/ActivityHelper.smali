.class public Lio/card/payment/ui/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# direct methods
.method private static actionBarNonNull(Landroid/app/Activity;)Z
    .locals 0

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static actionBarSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static addActionBarIfSupported(Landroid/app/Activity;)V
    .locals 1

    .line 28
    invoke-static {}, Lio/card/payment/ui/ActivityHelper;->actionBarSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    return-void
.end method

.method public static holoSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static setActionBarHomeIcon(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setActivityTheme(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lio/card/payment/ui/ActivityHelper;->holoSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x103006e

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const p1, 0x103000c

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public static setFlagSecure(Landroid/app/Activity;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private static setupActionBar(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    sget-object v1, Lio/card/payment/ui/Appearance;->ACTIONBAR_BACKGROUND:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "action_bar_title"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, -0x1

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/4 p0, 0x0

    .line 82
    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz p2, :cond_1

    .line 85
    invoke-static {v0, p2}, Lio/card/payment/ui/ActivityHelper;->setActionBarHomeIcon(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static setupActionBarIfSupported(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p3, :cond_0

    const-string p3, ""

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Lio/card/payment/ui/ActivityHelper;->actionBarSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0}, Lio/card/payment/ui/ActivityHelper;->actionBarNonNull(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 51
    invoke-static {p0, p2, p4}, Lio/card/payment/ui/ActivityHelper;->setupActionBar(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_2

    const/16 p0, 0x8

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
