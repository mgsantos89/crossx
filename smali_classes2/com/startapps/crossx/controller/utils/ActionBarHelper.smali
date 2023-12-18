.class public Lcom/startapps/crossx/controller/utils/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTitle(Landroid/app/ActionBar;Landroid/text/SpannableString;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTitle(Landroid/app/ActionBar;Ljava/lang/CharSequence;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
