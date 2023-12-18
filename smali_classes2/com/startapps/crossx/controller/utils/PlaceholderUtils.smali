.class public Lcom/startapps/crossx/controller/utils/PlaceholderUtils;
.super Ljava/lang/Object;
.source "PlaceholderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;
    }
.end annotation


# static fields
.field public static EMPTY_LIST:Ljava/lang/String; = "EMPTY_LIST"

.field public static ERROR:Ljava/lang/String; = "ERROR"

.field public static LOADING:Ljava/lang/String; = "LOADING"

.field private static defaultEmptyImageViewId:I

.field private static defaultEmptyListViewId:I

.field private static defaultEmptyMessageTextViewId:I

.field private static defaultErrorButtonId:I

.field private static defaultErrorImageViewId:I

.field private static defaultErrorMessageTextViewId:I

.field private static defaultErrorViewId:I

.field private static defaultLoadingButtonId:I

.field private static defaultLoadingMessageTextViewId:I

.field private static defaultLoadingViewId:I


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

.method public static buildDefaultPlaceholdersManager(Landroid/app/Activity;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->buildDefaultPlaceholdersManager(Landroid/view/View;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object p0

    return-object p0
.end method

.method public static buildDefaultPlaceholdersManager(Landroid/view/View;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/startapps/crossx/controller/utils/PlaceholdersManager<",
            "Lcom/startapps/crossx/controller/utils/PlaceholderUtils$ConfigurablePlaceholder;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    invoke-direct {v0}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;-><init>()V

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->LOADING:Ljava/lang/String;

    new-instance v8, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;

    sget v4, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingViewId:I

    const/4 v5, 0x0

    sget v6, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingMessageTextViewId:I

    sget v7, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingButtonId:I

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;-><init>(Landroid/view/View;IIII)V

    .line 38
    invoke-virtual {v0, v1, v8}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->add(Ljava/lang/String;Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->ERROR:Ljava/lang/String;

    new-instance v8, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;

    sget v4, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorViewId:I

    sget v5, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorImageViewId:I

    sget v6, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorMessageTextViewId:I

    sget v7, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorButtonId:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;-><init>(Landroid/view/View;IIII)V

    .line 39
    invoke-virtual {v0, v1, v8}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->add(Ljava/lang/String;Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object v0

    sget-object v1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->EMPTY_LIST:Ljava/lang/String;

    new-instance v2, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;

    sget v3, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyListViewId:I

    sget v4, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyImageViewId:I

    sget v5, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyMessageTextViewId:I

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/startapps/crossx/controller/utils/SimplePlaceholder;-><init>(Landroid/view/View;III)V

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/startapps/crossx/controller/utils/PlaceholdersManager;->add(Ljava/lang/String;Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;)Lcom/startapps/crossx/controller/utils/PlaceholdersManager;

    move-result-object p0

    return-object p0
.end method

.method public static findChildOrBust(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find view with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(IIIIIIIIII)V
    .locals 0

    .line 20
    sput p0, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingViewId:I

    .line 21
    sput p1, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingMessageTextViewId:I

    .line 22
    sput p2, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultLoadingButtonId:I

    .line 23
    sput p3, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorViewId:I

    .line 24
    sput p4, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorImageViewId:I

    .line 25
    sput p5, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorMessageTextViewId:I

    .line 26
    sput p6, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultErrorButtonId:I

    .line 27
    sput p7, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyListViewId:I

    .line 28
    sput p8, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyImageViewId:I

    .line 29
    sput p9, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->defaultEmptyMessageTextViewId:I

    return-void
.end method
