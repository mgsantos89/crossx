.class final enum Lbutterknife/ButterKnife$Finder$2;
.super Lbutterknife/ButterKnife$Finder;
.source "ButterKnife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbutterknife/ButterKnife$Finder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lbutterknife/ButterKnife$Finder;-><init>(Ljava/lang/String;ILbutterknife/ButterKnife$1;)V

    return-void
.end method


# virtual methods
.method public findOptionalView(Ljava/lang/Object;I)Landroid/view/View;
    .locals 0

    .line 108
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getContext(Ljava/lang/Object;)Landroid/content/Context;
    .locals 0

    .line 112
    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method
