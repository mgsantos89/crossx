.class public Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserModel;",
        ">;"
    }
.end annotation


# instance fields
.field protected onClickUserListener:Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;

.field protected totalVacancies:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserModel;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 47
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;

    .line 48
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserModel;

    .line 50
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080172

    .line 51
    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 50
    invoke-virtual {p3, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 53
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getNameUser()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getAgeUser()Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/controller/utils/Preference;->getCurrentUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getBox()Lcom/startapps/crossx/model/BoxModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/BoxModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getCheckin()Landroid/widget/TextView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getReserved()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getNoshow()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getGympass()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getWaiting()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCheckinStatus()I

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getReserved()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCheckinStatus()I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getWaiting()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCheckinStatus()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_3

    .line 67
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->isGympass()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getCheckin()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getGympass()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getCheckin()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getGympass()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCheckinStatus()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_4

    .line 75
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getCanceled()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getCheckinStatus()I

    move-result p3

    const/4 v0, 0x6

    if-ne p3, v0, :cond_5

    .line 77
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getNoshow()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getCheckin()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :goto_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->getHeaderUser()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;Lcom/startapps/crossx/model/UserModel;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 117
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;-><init>(Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00af

    return v0
.end method

.method public setOnClickUserCheckinListener(Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->onClickUserListener:Lcom/startapps/crossx/Interfaces/OnClickUserCheckinListener;

    return-void
.end method

.method public setTotalVacancies(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->totalVacancies:I

    return-void
.end method
