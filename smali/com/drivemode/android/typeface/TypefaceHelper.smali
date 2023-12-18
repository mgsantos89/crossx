.class public final Lcom/drivemode/android/typeface/TypefaceHelper;
.super Ljava/lang/Object;
.source "TypefaceHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TypefaceHelper"

.field private static sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;


# instance fields
.field private final mCache:Lcom/drivemode/android/typeface/TypefaceCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/drivemode/android/typeface/TypefaceCache;->getInstance(Landroid/content/Context;)Lcom/drivemode/android/typeface/TypefaceCache;

    move-result-object p1

    iput-object p1, p0, Lcom/drivemode/android/typeface/TypefaceHelper;->mCache:Lcom/drivemode/android/typeface/TypefaceCache;

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/drivemode/android/typeface/TypefaceHelper;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->TAG:Ljava/lang/String;

    const-string v2, "not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 50
    :try_start_1
    sput-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;
    .locals 3

    const-class v0, Lcom/drivemode/android/typeface/TypefaceHelper;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 61
    monitor-exit v0

    return-object v1

    .line 59
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Instance is not initialized yet. Call initialize() first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/app/Application;)V
    .locals 3

    const-class v0, Lcom/drivemode/android/typeface/TypefaceHelper;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;

    if-eqz v1, :cond_0

    .line 37
    sget-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->TAG:Ljava/lang/String;

    const-string v2, "already initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    new-instance v1, Lcom/drivemode/android/typeface/TypefaceHelper;

    invoke-direct {v1, p0}, Lcom/drivemode/android/typeface/TypefaceHelper;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/drivemode/android/typeface/TypefaceHelper;->sHelper:Lcom/drivemode/android/typeface/TypefaceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public setTypeface(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 0

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {p0, p1, p4}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-object p1
.end method

.method public setTypeface(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;
    .locals 0

    .line 179
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p0, p1, p4, p5}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    return-object p1
.end method

.method public setTypeface(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setTypeface(Landroid/content/Context;ILjava/lang/String;I)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setTypeface(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroid/app/Dialog;",
            ">(TD;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/app/Dialog;Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Landroid/app/Dialog;",
            ">(TD;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 281
    invoke-static {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/DialogUtils;->setTypeface(Lcom/drivemode/android/typeface/TypefaceHelper;Landroid/app/Dialog;Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ">(TF;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/app/Fragment;Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ">(TF;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 230
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    .line 232
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 233
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/ViewGroup;",
            ">(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 99
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 105
    :cond_1
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, p2}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/ViewGroup;",
            ">(TV;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 121
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 122
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    goto :goto_1

    .line 125
    :cond_0
    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/widget/TextView;",
            ">(TV;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/drivemode/android/typeface/TypefaceHelper;->mCache:Lcom/drivemode/android/typeface/TypefaceCache;

    invoke-virtual {v0, p2}, Lcom/drivemode/android/typeface/TypefaceCache;->get(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/widget/TextView;",
            ">(TV;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/drivemode/android/typeface/TypefaceHelper;->mCache:Lcom/drivemode/android/typeface/TypefaceCache;

    invoke-virtual {v0, p2}, Lcom/drivemode/android/typeface/TypefaceCache;->get(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public supportSetTypeface(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(TF;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, p2, v0}, Lcom/drivemode/android/typeface/TypefaceHelper;->supportSetTypeface(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-void
.end method

.method public supportSetTypeface(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroidx/fragment/app/Fragment;",
            ">(TF;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 258
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 261
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/view/ViewGroup;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
