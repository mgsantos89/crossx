.class public final Lcom/startapps/crossx/model/holder/CoachDetailHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CoachDetailHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/startapps/crossx/model/holder/CoachDetailHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bind",
        "",
        "model",
        "Lcom/startapps/crossx/model/GymClassCoachModel;",
        "isLast",
        "",
        "populateAvatar",
        "populateName",
        "populateTypeName",
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

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final populateAvatar(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06011c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 38
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 39
    iget-object v2, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060158

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getUser_image()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 41
    iget-object v2, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0600b6

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 44
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getUser_image()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    if-nez v3, :cond_5

    .line 47
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getUser_image()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 52
    :cond_5
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080141

    .line 53
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_view_image_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_2
    return-void

    .line 38
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final populateName(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_coach_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final populateTypeName(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->text_type_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getTypeName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/startapps/crossx/model/GymClassCoachModel;Z)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->populateName(Lcom/startapps/crossx/model/GymClassCoachModel;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->populateTypeName(Lcom/startapps/crossx/model/GymClassCoachModel;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->populateAvatar(Lcom/startapps/crossx/model/GymClassCoachModel;)V

    if-eqz p2, :cond_0

    .line 23
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/CoachDetailHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/startapps/crossx/R$id;->hr:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableRow;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_0
    return-void
.end method
