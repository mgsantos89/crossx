.class public Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "WokoutDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_MAX_COUNT:I = 0x2

.field private static final TYPE_SEPARATOR:I = 0x1


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSeparatorsSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mSeparatorsSet:Ljava/util/TreeSet;

    const-string v0, "layout_inflater"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addSeparatorItem(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mSeparatorsSet:Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mSeparatorsSet:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 70
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->getItemViewType(I)I

    move-result p3

    if-nez p2, :cond_2

    .line 73
    new-instance v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0126

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a04db

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 88
    iget-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0122

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a03ea

    .line 77
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const p3, 0x7f0a03e9

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 80
    iget-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p3, v0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapps/crossx/view/adapter/WokoutDayAdapter$ViewHolder;

    :goto_1
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
