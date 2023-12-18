.class public Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "TimelineGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/GroupTimelineModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/GroupTimelineModel;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public calculateDays(Ljava/util/Date;Ljava/util/Date;)J
    .locals 2

    .line 72
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 5

    .line 42
    check-cast p1, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;

    .line 43
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/GroupTimelineModel;

    .line 45
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getTitle()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getMessage()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getImg()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 50
    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getDate()Ljava/util/Date;

    move-result-object p3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p3, v0}, Lcom/startapps/crossx/view/adapter/TimelineGroupAdapter;->calculateDays(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getDate()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getDate()Ljava/util/Date;

    move-result-object v0

    const-string v1, "dd/MM/yyyy"

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->dateForString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x7

    cmp-long p3, v0, v2

    if-gez p3, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getDate()Landroid/widget/TextView;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getDate()Landroid/widget/TextView;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p3

    const-string v0, "0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Aluno"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 63
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Coach"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p3

    const-string v0, "2"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 65
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Head Coach"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p2}, Lcom/startapps/crossx/model/GroupTimelineModel;->getUserModel()Lcom/startapps/crossx/model/UserModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapps/crossx/model/UserModel;->getRole()Ljava/lang/String;

    move-result-object p2

    const-string p3, "3"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;->getSubTitle()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Cross X"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 32
    new-instance v0, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/model/holder/TimelineGroupHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00ae

    return v0
.end method
