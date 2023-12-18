.class public Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "BoxAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/BoxModel;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;

.field objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;"
        }
    .end annotation
.end field

.field userRequester:Lcom/startapps/crossx/controller/network/requests/BoxRequester;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/BoxModel;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->objects:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->activity:Lcom/startapps/crossx/view/activity/AbstractBoxAutoCompleteActivity;

    .line 31
    new-instance p2, Lcom/startapps/crossx/controller/network/requests/BoxRequester;

    invoke-direct {p2, p1}, Lcom/startapps/crossx/controller/network/requests/BoxRequester;-><init>(Lcom/startapps/crossx/view/activity/AbstractActivity;)V

    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->userRequester:Lcom/startapps/crossx/controller/network/requests/BoxRequester;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 46
    check-cast p1, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;

    .line 47
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/BoxModel;

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->getName()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/BoxModel;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->getImg()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080172

    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 50
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance p3, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;Lcom/startapps/crossx/model/BoxModel;)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 60
    new-instance v0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;)V

    return-object v0
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 36
    new-instance v0, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/BoxAutoCompleteHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d008c

    return v0
.end method
