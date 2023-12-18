.class public Lcom/startapps/crossx/modules/timeline/TimeLineFragment;
.super Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;
.source "TimeLineFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;
.implements Lcom/startapps/crossx/Interfaces/OnTimelineListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/startapps/crossx/classes/timeline/TimelineContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;",
        "Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;",
        "Lcom/startapps/crossx/Interfaces/OnTimelineListener;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;",
        "Lcom/startapps/crossx/classes/timeline/TimelineContract$View<",
        "Lcom/startapps/crossx/model/TimeLineModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final REQUEST_LOCATION_PERMISSION:I = 0x1


# instance fields
.field protected actionView:Lcom/startapps/crossx/view/NotificationActionView;

.field protected adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

.field protected currentPage:I

.field private idBox:Ljava/lang/String;

.field protected listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

.field private onclickTimeLineButton:Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

.field protected openPhotoViewer:Z

.field protected post:Lcom/getbase/floatingactionbutton/FloatingActionButton;

.field protected progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

.field protected timeLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;


# direct methods
.method static bridge synthetic -$$Nest$fgetonclickTimeLineButton(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->onclickTimeLineButton:Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewModelPresenter(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->openPhotoViewer:Z

    .line 96
    iput v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    return-void
.end method

.method private addFooterView()Landroid/view/View;
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;

    .line 272
    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$2;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView;->setOnReloadListener(Lcom/startapps/crossx/view/widget/listview/footer/LoadFooterListView$OnReloadListener;)V

    return-object v0
.end method

.method private errorLoading()V
    .locals 2

    .line 311
    iget v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setRefreshing(Z)V

    .line 314
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 315
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->onLoadError()V

    :goto_0
    return-void
.end method

.method private getBitmap(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1

    .line 359
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private optionsEditPost(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/UserModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$4;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;Lcom/startapps/crossx/model/TimeLineModel;)V

    const p1, 0x7f030006

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 410
    :cond_0
    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$5;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;Lcom/startapps/crossx/model/TimeLineModel;)V

    const p1, 0x7f030007

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 449
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private publishOrEditPost(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 1

    .line 262
    invoke-virtual {p1}, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;->getPostId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onPublish(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {v0, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onEditPublication(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addListHeader()V
    .locals 4

    .line 293
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0140

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 295
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "dd/MM/yyyy"

    invoke-static {v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->calendarForString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->addHeaderView(Landroid/view/View;)V

    .line 298
    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$3;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public endLoader()V
    .locals 0

    return-void
.end method

.method public errorUpdateItems()V
    .locals 1

    const/4 v0, 0x0

    .line 551
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setRefreshing(Z)V

    .line 552
    invoke-direct {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->errorLoading()V

    return-void
.end method

.method public getContextActivity()Landroid/app/Activity;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    return-object v0
.end method

.method protected getLayoutToInflate()I
    .locals 1

    const v0, 0x7f0d0087

    return v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    return-object v0
.end method

.method protected getTimeLine(I)V
    .locals 2

    .line 325
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->idBox:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onFeatchPublicationsPage(Ljava/lang/String;I)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "Voc\u00ea n\u00e3o est\u00e1 conectado a internet"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 331
    invoke-direct {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->errorLoading()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initLoader()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v1, 0xca

    if-eq p1, v1, :cond_0

    const/16 v1, 0xcb

    if-ne p1, v1, :cond_1

    :cond_0
    const-string p1, "publish"

    .line 197
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;

    .line 198
    invoke-direct {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->publishOrEditPost(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    const/16 p2, 0x7d

    if-ne p1, p2, :cond_2

    const-string/jumbo p1, "timeline"

    .line 201
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/model/TimeLineModel;

    if-eqz p1, :cond_2

    .line 204
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {p2, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->getPositionTimeLineModel(Lcom/startapps/crossx/model/TimeLineModel;)I

    move-result p2

    .line 205
    iget-object p3, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-interface {p3, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onAttach(Landroid/app/Activity;)V

    .line 223
    instance-of v0, p1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/startapps/crossx/view/activity/HomeActivity;

    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->onclickTimeLineButton:Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    :cond_0
    return-void
.end method

.method public onClickImageListener(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 1

    .line 372
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goToPhotoViewer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->openPhotoViewer:Z

    return-void
.end method

.method public onClickSharePost(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 3

    .line 460
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onSharePublication(Landroid/content/Context;Lcom/startapps/crossx/model/TimeLineModel;)V

    return-void
.end method

.method public onClickUserPostLister(Lcom/startapps/crossx/model/UserModel;)V
    .locals 2

    .line 381
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->BOX:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/model/enuns/UsersRole;->MASTER:Lcom/startapps/crossx/model/enuns/UsersRole;

    if-eq v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/startapps/crossx/controller/utils/Intents;->goTouser(Landroid/content/Context;Lcom/startapps/crossx/model/UserModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 238
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0e0010

    .line 240
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a031a

    .line 242
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    .line 243
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/view/NotificationActionView;

    iput-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->actionView:Lcom/startapps/crossx/view/NotificationActionView;

    .line 244
    invoke-virtual {v0, p1, p2}, Lcom/startapps/crossx/view/NotificationActionView;->setItemData(Landroid/view/Menu;Landroid/view/MenuItem;)V

    .line 247
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->updateNotificationView()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    return-object p1
.end method

.method public onDeletePublicationError(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0

    const p1, 0x7f120191

    .line 569
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->notify(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 214
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->endActivity()V

    .line 215
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onDestroy()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->notify(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 504
    iget v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getTimeLine(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 253
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a031a

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->onclickTimeLineButton:Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;

    invoke-interface {v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$OnclickTimeLineButton;->openNotificationsFragment()V

    .line 257
    :cond_0
    invoke-super {p0, p1}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPublicationDeleted(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPublishError(Lcom/startapps/crossx/classes/timeline/TimelinePublishBody;)V
    .locals 0

    const p1, 0x7f120197

    .line 579
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->notify(Ljava/lang/String;)V

    return-void
.end method

.method public onPublishSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 574
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getTimeLine(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 492
    iput v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    .line 493
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getTimeLine(I)V

    return-void
.end method

.method public onRemovePost(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->optionsEditPost(Lcom/startapps/crossx/model/TimeLineModel;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p3, "Voc\u00ea pecisa dar permiss\u00e3o"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 164
    invoke-super {p0}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onResume()V

    .line 166
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Timeline"

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->startActivity(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->updateNotificationView()V

    .line 170
    iget-boolean v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->openPhotoViewer:Z

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment$1;-><init>(Lcom/startapps/crossx/modules/timeline/TimeLineFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->openPhotoViewer:Z

    return-void
.end method

.method public onShowCommentsUI(Lcom/startapps/crossx/model/TimeLineModel;)V
    .locals 4

    .line 594
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 596
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/startapps/crossx/modules/comments/CommentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "box_id"

    .line 597
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "timeline"

    .line 598
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x7d

    .line 599
    invoke-virtual {p0, v1, p1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onSuccessReason(Lcom/startapps/crossx/model/TimeLineModel;Ljava/lang/String;)V
    .locals 0

    .line 604
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->notify(Ljava/lang/String;)V

    .line 605
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->showLoadingView()V

    .line 606
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 607
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->onRefresh()V

    return-void
.end method

.method public onUpdatedPostTimeLine()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1, p2}, Lcom/startapps/crossx/view/fragment/base/AbstractListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->addListHeader()V

    .line 143
    new-instance p1, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/modules/timeline/TimelineViewModel;-><init>(Lcom/startapps/crossx/classes/timeline/TimelineContract$View;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    .line 145
    new-instance p1, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->viewModelPresenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;-><init>(Landroid/content/Context;Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnTimelineListener;)V

    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    .line 146
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p2, p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-direct {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->addFooterView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadingView(Landroid/view/View;)V

    .line 148
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, p0}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setOnLoadMoreListListener(Lcom/startapps/crossx/view/widget/listview/listener/OnLoadMoreListListener;)V

    .line 150
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/BoxModel;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->idBox:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method public setPostClick()V
    .locals 4

    .line 231
    invoke-static {}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->getInstance()Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "Click"

    const-string v2, "Timeline - Novo Post"

    const-string v3, "Button"

    invoke-virtual {v0, v3, v1, v2}, Lcom/startapps/crossx/controller/analytics/AnalyticsHelper;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Intents;->goToPost(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f010025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public updateItems(Ljava/util/List;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 522
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    invoke-virtual {v0}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->stopSpinning()V

    .line 523
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->progressBar:Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/startapps/crossx/view/widget/listview/footer/ProgressWheel;->setVisibility(I)V

    .line 525
    invoke-static {}, Lcom/startapps/crossx/controller/dao/TimelineDAO;->reset()V

    .line 526
    invoke-static {p1}, Lcom/startapps/crossx/controller/dao/TimelineDAO;->insertPublications(Ljava/util/List;)V

    .line 528
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->smoothScrollToPosition(I)V

    .line 531
    :cond_0
    iput p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->currentPage:I

    .line 533
    iget-object p2, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->timeLineModels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 534
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->adapter:Lcom/startapps/crossx/view/adapter/TimeLineAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->notifyDataSetChanged()V

    .line 535
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setRefreshing(Z)V

    .line 537
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->hideLoadingView()V

    if-nez p3, :cond_2

    .line 540
    iget-object p1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->listTimeLine:Lcom/startapps/crossx/view/widget/listview/ObservableListView;

    invoke-virtual {p1, v1}, Lcom/startapps/crossx/view/widget/listview/ObservableListView;->setLoadMoreItems(Z)V

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual {p0, v1}, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->setRefreshing(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateNotificationView()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->actionView:Lcom/startapps/crossx/view/NotificationActionView;

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getNotificationCount()I

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/startapps/crossx/modules/timeline/TimeLineFragment;->actionView:Lcom/startapps/crossx/view/NotificationActionView;

    invoke-virtual {v1, v0}, Lcom/startapps/crossx/view/NotificationActionView;->setCount(I)V

    :cond_0
    return-void
.end method
