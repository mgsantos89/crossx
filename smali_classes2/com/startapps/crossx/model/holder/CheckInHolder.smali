.class public final Lcom/startapps/crossx/model/holder/CheckInHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CheckInHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/startapps/crossx/model/holder/CheckInHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bind",
        "",
        "model",
        "Lcom/startapps/crossx/model/CheckInModel;",
        "isLast",
        "",
        "populateAvatar",
        "populateLabel",
        "populateName",
        "populateStatusUserName",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final populateAvatar(Lcom/startapps/crossx/model/CheckInModel;)V
    .locals 6

    .line 33
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06011c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->image_gympass:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->isGympass()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060034

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/startapps/crossx/R$id;->image_gympass:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 42
    iget-object v3, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060158

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    .line 44
    iget-object v3, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0600b6

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    const/4 v3, 0x2

    .line 46
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v2, v4

    :cond_5
    if-nez v2, :cond_6

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getImgUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 55
    :cond_6
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080141

    .line 56
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_2
    return-void

    .line 41
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final populateLabel(Lcom/startapps/crossx/model/CheckInModel;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600b6

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060134

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 70
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060055

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060050

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatus()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 78
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06011c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->cv_check_in:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->cv_check_in:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 83
    iget-object v2, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060158

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 86
    iget-object v2, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/startapps/crossx/R$id;->cv_check_in:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->cv_check_in:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->cv_check_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getStatusName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final populateName(Lcom/startapps/crossx/model/CheckInModel;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final populateStatusUserName(Lcom/startapps/crossx/model/CheckInModel;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_status_user_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CheckInModel;->getUser()Lcom/startapps/crossx/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/UserModel;->getUserStatusName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/startapps/crossx/model/CheckInModel;Z)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CheckInHolder;->populateName(Lcom/startapps/crossx/model/CheckInModel;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CheckInHolder;->populateStatusUserName(Lcom/startapps/crossx/model/CheckInModel;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CheckInHolder;->populateAvatar(Lcom/startapps/crossx/model/CheckInModel;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CheckInHolder;->populateLabel(Lcom/startapps/crossx/model/CheckInModel;)V

    if-eqz p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/CheckInHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/startapps/crossx/R$id;->hr:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_0
    return-void
.end method
