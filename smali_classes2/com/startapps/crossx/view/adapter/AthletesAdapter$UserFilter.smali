.class Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;
.super Landroid/widget/Filter;
.source "AthletesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/AthletesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/adapter/AthletesAdapter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapps/crossx/view/adapter/AthletesAdapter;Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;-><init>(Lcom/startapps/crossx/view/adapter/AthletesAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    iget-object v2, v2, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 110
    iget-object v4, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    iget-object v4, v4, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapps/crossx/model/UserModel;

    .line 111
    invoke-virtual {v4}, Lcom/startapps/crossx/model/UserModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 115
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_2
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->originalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 122
    monitor-exit p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .line 133
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 135
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object p2, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p2}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->clear()V

    const/4 p2, 0x0

    .line 138
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapps/crossx/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/AthletesAdapter$UserFilter;->this$0:Lcom/startapps/crossx/view/adapter/AthletesAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/AthletesAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
