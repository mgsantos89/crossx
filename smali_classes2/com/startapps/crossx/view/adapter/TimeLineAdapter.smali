.class public Lcom/startapps/crossx/view/adapter/TimeLineAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "TimeLineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/TimeLineModel;",
        ">;"
    }
.end annotation


# instance fields
.field private onTimelineListener:Lcom/startapps/crossx/Interfaces/OnTimelineListener;

.field private presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;


# direct methods
.method static bridge synthetic -$$Nest$fgetonTimelineListener(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;)Lcom/startapps/crossx/Interfaces/OnTimelineListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->onTimelineListener:Lcom/startapps/crossx/Interfaces/OnTimelineListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpresenter(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;)Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;Ljava/util/List;Lcom/startapps/crossx/Interfaces/OnTimelineListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/TimeLineModel;",
            ">;",
            "Lcom/startapps/crossx/Interfaces/OnTimelineListener;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p3}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    iput-object p4, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->onTimelineListener:Lcom/startapps/crossx/Interfaces/OnTimelineListener;

    .line 33
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 3

    .line 48
    check-cast p1, Lcom/startapps/crossx/model/holder/TimeLineHolder;

    .line 49
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/TimeLineModel;

    .line 52
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->urlImagePublicationIsValid()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 56
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageProperties()Lcom/startapps/crossx/model/ImageProperties;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3}, Lcom/startapps/crossx/model/ImageProperties;->calculateProportion()F

    move-result p3

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setImageUrl(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setScaleHeight(F)V

    .line 64
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$1;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    move-result-object p3

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;->setVisibility(I)V

    .line 77
    :goto_1
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getType()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object p3, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$9;->$SwitchMap$com$startapps$crossx$model$enuns$UsersRole:[I

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->getElementForPosition(I)Lcom/startapps/crossx/model/enuns/UsersRole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/enuns/UsersRole;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    .line 88
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "Cross X"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object p3

    .line 90
    :goto_2
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getNameBox()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgBox()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f080172

    .line 92
    invoke-static {v2}, Lcom/startapps/crossx/controller/utils/ImageLoaderUtility;->getCircularOptions(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 91
    invoke-virtual {p3, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getNameBox()Landroid/widget/TextView;

    move-result-object p3

    const-string v0, "CROSSX"

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getImgBox()Landroid/widget/ImageView;

    move-result-object p3

    const v0, 0x7f080140

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_3
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getHeaderUser()Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$2;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextPost()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    :goto_4
    const-string v0, ""

    :goto_5
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getShare()Landroid/widget/ImageView;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$3;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTime()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->calculateTimePosted()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getButtonRemovePost()Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$4;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getToggleButtonLike()Lcom/startapps/crossx/view/widget/ToggleButton;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$5;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;Lcom/startapps/crossx/model/holder/TimeLineHolder;)V

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/view/widget/ToggleButton;->setToggleButtonListener(Lcom/startapps/crossx/view/widget/ToggleButton$ToggleButtonListener;)V

    .line 139
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getBtComments()Landroid/widget/ImageButton;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$6;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextNumberLikes()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onTextNumberLikes(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextNumberComments()Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->onTextNumberComments(Lcom/startapps/crossx/model/TimeLineModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getToggleButtonLike()Lcom/startapps/crossx/view/widget/ToggleButton;

    move-result-object p3

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter;->presenter:Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;

    invoke-interface {v0, p2}, Lcom/startapps/crossx/classes/timeline/TimelineContract$Presenter;->isUserLiked(Lcom/startapps/crossx/model/TimeLineModel;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/view/widget/ToggleButton;->setSelected(Z)V

    .line 149
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getCommentsLayout()Lcom/startapps/crossx/view/widget/CommentsLayout;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/TimeLineModel;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->addComments(Ljava/util/List;)V

    .line 151
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextNumberLikes()Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$7;

    invoke-direct {v0, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$7;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;->getTextNumberComments()Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$8;

    invoke-direct {p3, p0, p2}, Lcom/startapps/crossx/view/adapter/TimeLineAdapter$8;-><init>(Lcom/startapps/crossx/view/adapter/TimeLineAdapter;Lcom/startapps/crossx/model/TimeLineModel;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 38
    new-instance v0, Lcom/startapps/crossx/model/holder/TimeLineHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/TimeLineHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00a5

    return v0
.end method
