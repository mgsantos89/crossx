.class public abstract Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;
.super Lcom/startapps/crossx/view/activity/AbstractActivity;
.source "AbstractMenuDrawerActivity.java"


# static fields
.field public static final TAG_ATHLETES:Ljava/lang/String; = "athletes"

.field public static final TAG_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final TAG_CHAMPIONSHIP:Ljava/lang/String; = "championship"

.field public static final TAG_CHECK_IN:Ljava/lang/String; = "check_in"

.field public static final TAG_CLASSES:Ljava/lang/String; = "classes"

.field public static final TAG_DATASHEET:Ljava/lang/String; = "datasheet"

.field public static final TAG_DAY_TRAINING:Ljava/lang/String; = "day-training"

.field public static final TAG_ECOMMERCE:Ljava/lang/String; = "ecommerce"

.field public static final TAG_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final TAG_PAYMENT:Ljava/lang/String; = "payment"

.field public static final TAG_PAYMENTS:Ljava/lang/String; = "payments"

.field public static final TAG_PERSONAL_RECORDS:Ljava/lang/String; = "personal_records"

.field public static final TAG_PROFILE:Ljava/lang/String; = "profile"

.field public static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field public static final TAG_STORE:Ljava/lang/String; = "store"

.field public static final TAG_TIMELINE:Ljava/lang/String; = "timeline"

.field public static final TAG_TIMERS:Ljava/lang/String; = "timers"


# instance fields
.field protected currentFragment:Ljava/lang/String;

.field protected mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field protected menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

.field protected menuDrawerModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/MenuDrawerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/startapps/crossx/view/activity/AbstractActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected backToInitFragment()V
    .locals 3

    .line 167
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_1
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    goto :goto_0

    .line 173
    :cond_2
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    :goto_0
    return-void
.end method

.method protected getCurrentFragment()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
.end method

.method protected abstract getToIdFragment()I
.end method

.method protected abstract getToListView()Landroid/widget/ListView;
.end method

.method protected abstract getToToolbar()Landroidx/appcompat/widget/Toolbar;
.end method

.method protected loadCurrentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToIdFragment()I

    move-result v0

    invoke-virtual {p2, v0, p1, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    const/16 p1, 0x1003

    .line 221
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method protected loadItensMenu()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/MenuDrawerModel;->menuWithoutBox([Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/MenuDrawerModel;->menuWithoutBox([Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->PERSONAL_RECORDS:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-static {}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->values()[Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/model/MenuDrawerModel;->convertArrayEnunsInLis([Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    sget-object v0, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->TIMELINE:Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setListViewClick()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setMenuDrawer()V

    .line 95
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method protected abstract onSwicthFragment(I)V
.end method

.method protected abstract openingMenuDrawer()V
.end method

.method protected setListViewClick()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$2;-><init>(Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected setMenuDrawer()V
    .locals 8

    .line 100
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 101
    new-instance v0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v4

    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v5

    const v6, 0x7f12011b

    const v7, 0x7f12011b

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$1;-><init>(Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 118
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    .line 120
    new-instance v0, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    iget-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    .line 122
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->loadItensMenu()V

    return-void
.end method

.method protected startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 215
    invoke-virtual {p0, p1, v0, p2}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->loadCurrentFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)V

    return-void
.end method

.method public swicthFragment(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V
    .locals 4

    .line 226
    sget-object v0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity$3;->$SwitchMap$com$startapps$crossx$model$enuns$MenuDrawableEnum:[I

    invoke-virtual {p1}, Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "calendar"

    const-string v2, "check_in"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "notification"

    .line 322
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 323
    new-instance v1, Lcom/startapps/crossx/view/fragment/NotificationsFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/NotificationsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f120257

    .line 324
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "athletes"

    .line 316
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 317
    new-instance v1, Lcom/startapps/crossx/view/fragment/AthletesFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/AthletesFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201b5

    .line 318
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "profile"

    .line 310
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 311
    new-instance v1, Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/ProfileFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201c5

    .line 312
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "settings"

    .line 301
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 302
    new-instance v1, Lcom/startapps/crossx/view/fragment/SettingsFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/SettingsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201d4

    .line 303
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "store"

    .line 293
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 296
    new-instance v1, Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;-><init>()V

    const-string v1, "https://www.starki.com.br/crossx?utm_source=CrossX&utm_medium=Starki&utm_campaign=Parceiros"

    invoke-static {v1}, Lcom/startapps/crossx/view/fragment/WebView_Fragment;->newInstance(Ljava/lang/String;)Lcom/startapps/crossx/view/fragment/WebView_Fragment;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f120271

    .line 297
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "championship"

    .line 287
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 288
    new-instance v1, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/ChampionshipFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f12011f

    .line 289
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "payments"

    .line 281
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 282
    new-instance v1, Lcom/startapps/crossx/view/fragment/PaymentsFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/PaymentsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f12025d

    .line 283
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v0, "timers"

    .line 275
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 276
    new-instance v1, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201d7

    .line 277
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "personal_records"

    .line 269
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 270
    new-instance v1, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/prs/PersonalRecordsFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201bb

    .line 271
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :pswitch_9
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    const-string v3, "enable_timesheet"

    invoke-virtual {v0, v3}, Lcom/startapps/crossx/controller/utils/Preference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7f1201b7

    if-eqz v0, :cond_0

    .line 258
    iput-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/startapps/crossx/view/fragment/ClassFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/ClassFragment;-><init>()V

    const-string v1, "classes"

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_0
    iput-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 263
    new-instance v0, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/view/fragment/ClassesMonthFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_a
    iput-object v1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;

    invoke-direct {v0}, Lcom/startapps/crossx/modules/calendar/MyTrainingFragment;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201b6

    .line 248
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string v0, "datasheet"

    .line 240
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 241
    new-instance v1, Lcom/startapps/crossx/view/fragment/DataSheetFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/view/fragment/DataSheetFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201b8

    .line 242
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    const-string v0, "day-training"

    .line 234
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 235
    new-instance v1, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/modules/wod/DayTrainingFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201d8

    .line 236
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_d
    const-string/jumbo v0, "timeline"

    .line 228
    iput-object v0, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->currentFragment:Ljava/lang/String;

    .line 229
    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;

    invoke-direct {v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const v0, 0x7f1201d6

    .line 230
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->setTitleActionBar(Ljava/lang/String;)V

    .line 331
    :goto_0
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->updateMenuDrawerSeleted(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V

    .line 332
    invoke-virtual {p0}, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->getToDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected tagFirstFragment()Ljava/lang/String;
    .locals 4

    .line 156
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/StringUtils;->emptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "personal_records"

    if-eqz v1, :cond_0

    return-object v2

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getUserStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v2

    :cond_2
    const-string/jumbo v0, "timeline"

    return-object v0
.end method

.method protected updateMenuDrawerSeleted(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/model/MenuDrawerModel;->setSelected(Z)V

    goto :goto_1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/MenuDrawerModel;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateMenuDrawerSeleted(Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    invoke-virtual {v2, v1}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    invoke-virtual {v2}, Lcom/startapps/crossx/model/MenuDrawerModel;->getMenuItem()Lcom/startapps/crossx/model/enuns/MenuDrawableEnum;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/startapps/crossx/model/MenuDrawerModel;->setSelected(Z)V

    goto :goto_1

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerModelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapps/crossx/model/MenuDrawerModel;

    invoke-virtual {v2, v0}, Lcom/startapps/crossx/model/MenuDrawerModel;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/AbstractMenuDrawerActivity;->menuDrawerAdapter:Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/MenuDrawerAdapter;->notifyDataSetChanged()V

    return-void
.end method
