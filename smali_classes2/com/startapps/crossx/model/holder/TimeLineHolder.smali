.class public Lcom/startapps/crossx/model/holder/TimeLineHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "TimeLineHolder.java"


# instance fields
.field btComments:Landroid/widget/ImageButton;

.field buttonRemovePost:Landroid/widget/TextView;

.field commentsLayout:Lcom/startapps/crossx/view/widget/CommentsLayout;

.field headerUser:Landroid/view/View;

.field imgBox:Landroid/widget/ImageView;

.field imgPost:Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

.field nameBox:Landroid/widget/TextView;

.field share:Landroid/widget/ImageView;

.field textNumberComments:Landroid/widget/TextView;

.field textNumberLikes:Landroid/widget/TextView;

.field textPost:Landroid/widget/TextView;

.field time:Landroid/widget/TextView;

.field toggleButtonLike:Lcom/startapps/crossx/view/widget/ToggleButton;

.field type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 53
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->buttonRemovePost:Landroid/widget/TextView;

    const-string v1, "oswald-bold.ttf"

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberLikes:Landroid/widget/TextView;

    const-string v1, "oswald-regular.ttf"

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberComments:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBtComments()Landroid/widget/ImageButton;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->btComments:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getButtonRemovePost()Landroid/widget/TextView;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->buttonRemovePost:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCommentsLayout()Lcom/startapps/crossx/view/widget/CommentsLayout;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->commentsLayout:Lcom/startapps/crossx/view/widget/CommentsLayout;

    return-object v0
.end method

.method public getHeaderUser()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->headerUser:Landroid/view/View;

    return-object v0
.end method

.method public getImgBox()Landroid/widget/ImageView;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgBox:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImgPost()Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgPost:Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    return-object v0
.end method

.method public getNameBox()Landroid/widget/TextView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->nameBox:Landroid/widget/TextView;

    return-object v0
.end method

.method public getShare()Landroid/widget/ImageView;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->share:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextNumberComments()Landroid/widget/TextView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberComments:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextNumberLikes()Landroid/widget/TextView;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textNumberLikes:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextPost()Landroid/widget/TextView;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textPost:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method public getToggleButtonLike()Lcom/startapps/crossx/view/widget/ToggleButton;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->toggleButtonLike:Lcom/startapps/crossx/view/widget/ToggleButton;

    return-object v0
.end method

.method public getType()Landroid/widget/TextView;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->type:Landroid/widget/TextView;

    return-object v0
.end method

.method public setButtonRemovePost(Landroid/widget/TextView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->buttonRemovePost:Landroid/widget/TextView;

    return-void
.end method

.method public setImgBox(Landroid/widget/ImageView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgBox:Landroid/widget/ImageView;

    return-void
.end method

.method public setImgPost(Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->imgPost:Lcom/startapps/crossx/view/widget/imageview/ProportionalImageView;

    return-void
.end method

.method public setNameBox(Landroid/widget/TextView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->nameBox:Landroid/widget/TextView;

    return-void
.end method

.method public setShare(Landroid/widget/ImageView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->share:Landroid/widget/ImageView;

    return-void
.end method

.method public setTextPost(Landroid/widget/TextView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->textPost:Landroid/widget/TextView;

    return-void
.end method

.method public setTime(Landroid/widget/TextView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->time:Landroid/widget/TextView;

    return-void
.end method

.method public setType(Landroid/widget/TextView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/startapps/crossx/model/holder/TimeLineHolder;->type:Landroid/widget/TextView;

    return-void
.end method
