.class public Lcom/startapps/crossx/view/widget/CommentsLayout;
.super Landroid/widget/LinearLayout;
.source "CommentsLayout.java"


# static fields
.field private static TOTAL_SHOW_COMMENTS:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/CommentsLayout;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/CommentsLayout;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object p1, p0, Lcom/startapps/crossx/view/widget/CommentsLayout;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public addComments(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/CommentModel;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->removeAllViews()V

    if-eqz p1, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcom/startapps/crossx/view/widget/CommentsLayout;->setVisibility(I)V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/startapps/crossx/view/widget/CommentsLayout;->TOTAL_SHOW_COMMENTS:I

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 68
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapps/crossx/model/CommentModel;

    .line 70
    invoke-virtual {v3}, Lcom/startapps/crossx/model/CommentModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v3}, Lcom/startapps/crossx/model/CommentModel;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v5, v3, v0, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    iget-object v3, p0, Lcom/startapps/crossx/view/widget/CommentsLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0107

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03fb

    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 86
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object v4

    const-string v5, "oswald-regular.ttf"

    invoke-virtual {v4, v3, v5}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/startapps/crossx/view/widget/CommentsLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/16 p1, 0x8

    .line 59
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/widget/CommentsLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method
