.class Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$VIEW_TYPES;
.super Ljava/lang/Object;
.source "AbstractRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VIEW_TYPES"
.end annotation


# static fields
.field public static final Footer:I = 0x3

.field public static final Normal:I = 0x2

.field public static final TYPE_HEADER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter$VIEW_TYPES;->this$0:Lcom/startapps/crossx/view/adapter/AbstractRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
