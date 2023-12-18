.class Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;
.super Landroid/widget/Filter;
.source "BoxAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 63
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    iget-object v0, v0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->objects:Ljava/util/List;

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->objects:Ljava/util/List;

    .line 71
    iget-object p1, p0, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter$2;->this$0:Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/BoxAutoCompleteAdapter;->notifyDataSetChanged()V

    return-void
.end method
