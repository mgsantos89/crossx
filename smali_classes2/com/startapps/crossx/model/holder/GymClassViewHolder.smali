.class public final Lcom/startapps/crossx/model/holder/GymClassViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GymClassViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/startapps/crossx/model/holder/GymClassViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "bind",
        "",
        "model",
        "Lcom/startapps/crossx/model/GymClassModel;",
        "listener",
        "Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;",
        "checkInIcon",
        "occupation",
        "titleName",
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
.method public static synthetic $r8$lambda$loX4GLN5klpjSD3huKJ7SXglRWA(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;Lcom/startapps/crossx/model/GymClassModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->bind$lambda-0(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;Lcom/startapps/crossx/model/GymClassModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda-0(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;Lcom/startapps/crossx/model/GymClassModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "$listener"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, p1}, Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;->onItemClick(Lcom/startapps/crossx/model/GymClassModel;)V

    return-void
.end method

.method private final checkInIcon(Lcom/startapps/crossx/model/GymClassModel;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getUser_check_in()Lcom/startapps/crossx/model/CheckInModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/startapps/crossx/R$id;->icon_check_in:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0800e1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/startapps/crossx/R$id;->icon_check_in:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0800e0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private final occupation(Lcom/startapps/crossx/model/GymClassModel;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getClass_limit()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getTotal_checkin()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " / vagas ilimitadas"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getTotal_checkin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getClass_limit()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " vagas"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private final titleName(Lcom/startapps/crossx/model/GymClassModel;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getCategory()Lcom/startapps/crossx/model/CategoryModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapps/crossx/model/CategoryModel;->getColor()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getStart_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getEnd_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/startapps/crossx/model/GymClassModel;->getCategory()Lcom/startapps/crossx/model/CategoryModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/model/CategoryModel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "this as java.lang.String).toUpperCase()"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/startapps/crossx/model/GymClassModel;Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;)V
    .locals 8

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->titleName(Lcom/startapps/crossx/model/GymClassModel;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->occupation(Lcom/startapps/crossx/model/GymClassModel;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->checkInIcon(Lcom/startapps/crossx/model/GymClassModel;)V

    .line 21
    iget-object v0, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/startapps/crossx/model/holder/GymClassViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/startapps/crossx/model/holder/GymClassViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/startapps/crossx/view/adapter/GymClassAdapter$OnItemClickListener;Lcom/startapps/crossx/model/GymClassModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v2, Landroid/graphics/Outline;

    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 25
    iget-object p1, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/startapps/crossx/R$id;->button_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result v5

    iget-object p1, p0, Lcom/startapps/crossx/model/holder/GymClassViewHolder;->itemView:Landroid/view/View;

    sget p2, Lcom/startapps/crossx/R$id;->button_circle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getHeight()I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
