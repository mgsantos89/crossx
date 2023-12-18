.class public Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "CreditCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/CreditCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolderCreditCard"
.end annotation


# instance fields
.field public background:Landroidx/cardview/widget/CardView;

.field public btnDelete:Landroid/widget/RelativeLayout;

.field public btnFavorite:Landroid/widget/RelativeLayout;

.field public cardBrand:Landroid/widget/ImageView;

.field public expirationDate:Landroid/widget/TextView;

.field public favoriteImage:Landroid/widget/ImageView;

.field public holderName:Landroid/widget/TextView;

.field public itemCreditCard:Landroid/widget/LinearLayout;

.field public lastDigits:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/CreditCardAdapter;Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CreditCardAdapter$ViewHolderCreditCard;->this$0:Lcom/startapps/crossx/view/adapter/CreditCardAdapter;

    .line 176
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
