.class public Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "ChampionshipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/ChampionshipModel;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/ChampionshipModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 39
    check-cast p1, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;

    .line 40
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/ChampionshipModel;

    .line 42
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getTitle()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStartDate()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getEndDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getDate()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStartDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getDate()Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStartDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/startapps/crossx/controller/utils/Utils;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getStatus()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 51
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "past"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    :cond_3
    :goto_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    .line 60
    invoke-virtual {p2}, Lcom/startapps/crossx/model/ChampionshipModel;->getPicture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 59
    invoke-virtual {p3, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;->getItem()Landroid/widget/RelativeLayout;

    move-result-object p1

    new-instance p3, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;Lcom/startapps/crossx/model/ChampionshipModel;)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 74
    new-instance v0, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/ChampionshipAdapter$ViewHolderRanking;-><init>(Lcom/startapps/crossx/view/adapter/ChampionshipAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d008f

    return v0
.end method
