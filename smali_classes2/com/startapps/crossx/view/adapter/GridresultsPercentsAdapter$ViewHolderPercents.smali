.class public Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "GridresultsPercentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderPercents"
.end annotation


# instance fields
.field public percents:Landroid/widget/TextView;

.field public result:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;Landroid/view/View;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->this$0:Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter;

    .line 52
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPercents()Landroid/widget/TextView;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->percents:Landroid/widget/TextView;

    return-object v0
.end method

.method public getResult()Landroid/widget/TextView;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->result:Landroid/widget/TextView;

    return-object v0
.end method

.method public setPercents(Landroid/widget/TextView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->percents:Landroid/widget/TextView;

    return-void
.end method

.method public setResult(Landroid/widget/TextView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/GridresultsPercentsAdapter$ViewHolderPercents;->result:Landroid/widget/TextView;

    return-void
.end method
