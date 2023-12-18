.class public Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;
.super Landroid/widget/EditText;
.source "ClickToSelectEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/startapps/crossx/controller/utils/Listable;",
        ">",
        "Landroid/widget/EditText;"
    }
.end annotation


# instance fields
.field mHint:Ljava/lang/CharSequence;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field mListableItems:[Ljava/lang/String;

.field onItemSelectedListener:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private positionSelected:I


# direct methods
.method static bridge synthetic -$$Nest$fputpositionSelected(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->positionSelected:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-virtual {p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mHint:Ljava/lang/CharSequence;

    return-void
.end method

.method private configureOnClickListener()V
    .locals 1

    .line 68
    new-instance v0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;

    invoke-direct {v0, p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$1;-><init>(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;)V

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/startapps/crossx/controller/utils/Listable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->positionSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapps/crossx/controller/utils/Listable;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->positionSelected:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setFocusable(Z)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setClickable(Z)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mItems:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mListableItems:[Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/controller/utils/Listable;

    .line 62
    iget-object v2, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mListableItems:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1}, Lcom/startapps/crossx/controller/utils/Listable;->getLabel()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v0, v3

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->configureOnClickListener()V

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->onItemSelectedListener:Lcom/startapps/crossx/controller/utils/ClickToSelectEditText$OnItemSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->mListableItems:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iput p1, p0, Lcom/startapps/crossx/controller/utils/ClickToSelectEditText;->positionSelected:I

    return-void
.end method
