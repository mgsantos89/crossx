.class public final enum Lcom/edmodo/cropper/cropwindow/handle/Handle;
.super Ljava/lang/Enum;
.source "Handle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/edmodo/cropper/cropwindow/handle/Handle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

.field public static final enum TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;


# instance fields
.field private mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 25
    new-instance v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v1, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v2, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v1, v2, v3}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v2, "TOP_LEFT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 26
    new-instance v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v3, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v2, v3, v4}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v3, "TOP_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v1, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 27
    new-instance v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v4, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v3, v4, v5}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v4, "BOTTOM_LEFT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v2, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 28
    new-instance v3, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v4, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;

    sget-object v5, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v4, v5, v6}, Lcom/edmodo/cropper/cropwindow/handle/CornerHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v5, "BOTTOM_RIGHT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v3, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 29
    new-instance v4, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v5, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v6, Lcom/edmodo/cropper/cropwindow/edge/Edge;->LEFT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v5, v6}, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v6, "LEFT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v4, Lcom/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 30
    new-instance v5, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v6, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v7, Lcom/edmodo/cropper/cropwindow/edge/Edge;->TOP:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v6, v7}, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v7, "TOP"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v5, Lcom/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 31
    new-instance v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v7, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;

    sget-object v8, Lcom/edmodo/cropper/cropwindow/edge/Edge;->RIGHT:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v7, v8}, Lcom/edmodo/cropper/cropwindow/handle/VerticalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v8, "RIGHT"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v6, Lcom/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 32
    new-instance v7, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v8, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;

    sget-object v9, Lcom/edmodo/cropper/cropwindow/edge/Edge;->BOTTOM:Lcom/edmodo/cropper/cropwindow/edge/Edge;

    invoke-direct {v8, v9}, Lcom/edmodo/cropper/cropwindow/handle/HorizontalHandleHelper;-><init>(Lcom/edmodo/cropper/cropwindow/edge/Edge;)V

    const-string v9, "BOTTOM"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v7, Lcom/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 33
    new-instance v8, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    new-instance v9, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;

    invoke-direct {v9}, Lcom/edmodo/cropper/cropwindow/handle/CenterHandleHelper;-><init>()V

    const-string v10, "CENTER"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/edmodo/cropper/cropwindow/handle/Handle;-><init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V

    sput-object v8, Lcom/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/edmodo/cropper/cropwindow/handle/Handle;

    .line 23
    filled-new-array/range {v0 .. v8}, [Lcom/edmodo/cropper/cropwindow/handle/Handle;

    move-result-object v0

    sput-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/edmodo/cropper/cropwindow/handle/HandleHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 1

    .line 23
    const-class v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-object p0
.end method

.method public static values()[Lcom/edmodo/cropper/cropwindow/handle/Handle;
    .locals 1

    .line 23
    sget-object v0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->$VALUES:[Lcom/edmodo/cropper/cropwindow/handle/Handle;

    invoke-virtual {v0}, [Lcom/edmodo/cropper/cropwindow/handle/Handle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/edmodo/cropper/cropwindow/handle/Handle;

    return-object v0
.end method


# virtual methods
.method public updateCropWindow(FFFLandroid/graphics/Rect;F)V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFFLandroid/graphics/Rect;F)V

    return-void
.end method

.method public updateCropWindow(FFLandroid/graphics/Rect;F)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/edmodo/cropper/cropwindow/handle/Handle;->mHelper:Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/edmodo/cropper/cropwindow/handle/HandleHelper;->updateCropWindow(FFLandroid/graphics/Rect;F)V

    return-void
.end method
