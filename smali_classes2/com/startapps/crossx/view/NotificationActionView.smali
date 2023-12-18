.class public Lcom/startapps/crossx/view/NotificationActionView;
.super Landroid/widget/RelativeLayout;
.source "NotificationActionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/NotificationActionView$SavedState;
    }
.end annotation


# static fields
.field private static final ACTION_SET_ABS:Ljava/lang/String;

.field private static final ACTION_SET_DELTA:Ljava/lang/String;

.field private static final EXTRA_COUNT:Ljava/lang/String; = "extraCount"


# instance fields
.field private mCount:I

.field private mIcon:Landroid/widget/ImageView;

.field private mItemData:Landroid/view/MenuItem;

.field private mMenu:Landroid/view/Menu;

.field private mText:Landroid/widget/TextView;

.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetACTION_SET_ABS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_ABS:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetACTION_SET_DELTA()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_DELTA:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/startapps/crossx/view/NotificationActionView;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ACTION_SET_ABS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_ABS:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SET_DELTA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_DELTA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/startapps/crossx/view/NotificationActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10102d8

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/startapps/crossx/view/NotificationActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    new-instance p1, Lcom/startapps/crossx/view/NotificationActionView$1;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/view/NotificationActionView$1;-><init>(Lcom/startapps/crossx/view/NotificationActionView;)V

    iput-object p1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static createNotificationIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extraCount"

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static setCountAbs(Landroid/content/Context;I)V
    .locals 2

    .line 110
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_ABS:Ljava/lang/String;

    .line 111
    invoke-static {p0, v1, p1}, Lcom/startapps/crossx/view/NotificationActionView;->createNotificationIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static setCountDelta(Landroid/content/Context;I)V
    .locals 2

    .line 116
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_DELTA:Ljava/lang/String;

    .line 117
    invoke-static {p0, v1, p1}, Lcom/startapps/crossx/view/NotificationActionView;->createNotificationIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mCount:I

    return v0
.end method

.method public getItemData()Landroid/view/MenuItem;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mItemData:Landroid/view/MenuItem;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 123
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    sget-object v1, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_ABS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/startapps/crossx/view/NotificationActionView;->ACTION_SET_DELTA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/startapps/crossx/view/NotificationActionView;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 150
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 152
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x1020006

    .line 59
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/NotificationActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1020014

    .line 60
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/NotificationActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mText:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 211
    check-cast p1, Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    .line 212
    invoke-virtual {p1}, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    iget p1, p1, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->count:I

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setCount(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 203
    new-instance v0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapps/crossx/view/NotificationActionView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 204
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getCount()I

    move-result v1

    iput v1, v0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->count:I

    return-object v0
.end method

.method public performClick()Z
    .locals 3

    .line 159
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mItemData:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public performLongClick()Z
    .locals 11

    .line 171
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performLongClick()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mItemData:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 174
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 175
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/view/NotificationActionView;->getLocationOnScreen([I)V

    .line 176
    invoke-virtual {p0, v2}, Lcom/startapps/crossx/view/NotificationActionView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 179
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getWidth()I

    move-result v4

    .line 180
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    aget v7, v1, v6

    .line 181
    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 184
    iget-object v9, p0, Lcom/startapps/crossx/view/NotificationActionView;->mItemData:Landroid/view/MenuItem;

    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 185
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v7, v2, :cond_0

    aget v1, v1, v10

    sub-int/2addr v8, v1

    .line 187
    div-int/2addr v4, v0

    sub-int/2addr v8, v4

    const/16 v0, 0x35

    invoke-virtual {v3, v0, v8, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x51

    .line 191
    invoke-virtual {v3, v0, v10, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 193
    :goto_0
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v0, v6

    :cond_1
    return v0
.end method

.method public setCount(I)V
    .locals 2

    .line 86
    iput p1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mCount:I

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mText:Landroid/widget/TextView;

    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    const-string p1, "99+"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mText:Landroid/widget/TextView;

    iget v0, p0, Lcom/startapps/crossx/view/NotificationActionView;->mCount:I

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setCountDelta(I)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/startapps/crossx/view/NotificationActionView;->getCount()I

    move-result v0

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setCount(I)V

    return-void
.end method

.method public setItemData(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 1

    .line 66
    iput-object p1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mMenu:Landroid/view/Menu;

    .line 67
    iput-object p2, p0, Lcom/startapps/crossx/view/NotificationActionView;->mItemData:Landroid/view/MenuItem;

    if-eqz p2, :cond_1

    .line 69
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setId(I)V

    .line 70
    iget-object p1, p0, Lcom/startapps/crossx/view/NotificationActionView;->mIcon:Landroid/widget/ImageView;

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setVisibility(I)V

    .line 73
    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setEnabled(Z)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setClickable(Z)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView;->setLongClickable(Z)V

    :cond_1
    return-void
.end method
