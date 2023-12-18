.class public final Lcom/startapps/crossx/model/holder/GymClassCoachHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GymClassCoachHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/startapps/crossx/model/holder/GymClassCoachHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bind",
        "",
        "model",
        "Lcom/startapps/crossx/model/GymClassCoachModel;",
        "imageCoach",
        "nameCoach",
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

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private final imageCoach(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 2

    .line 22
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getUser_image()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 23
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/startapps/crossx/R$id;->image_coach:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080141

    .line 24
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->image_coach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->image_coach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getUser_image()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 30
    new-instance v0, Lcom/startapps/crossx/controller/utils/CircleTransform;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/CircleTransform;-><init>()V

    check-cast v0, Lcom/squareup/picasso/Transformation;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->image_coach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    :goto_2
    return-void
.end method

.method private final nameCoach(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/startapps/crossx/R$id;->name_coach:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassCoachModel;->getNicknameOrName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/startapps/crossx/model/GymClassCoachModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->nameCoach(Lcom/startapps/crossx/model/GymClassCoachModel;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/GymClassCoachHolder;->imageCoach(Lcom/startapps/crossx/model/GymClassCoachModel;)V

    return-void
.end method
