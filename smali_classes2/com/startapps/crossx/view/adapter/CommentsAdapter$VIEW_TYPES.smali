.class Lcom/startapps/crossx/view/adapter/CommentsAdapter$VIEW_TYPES;
.super Ljava/lang/Object;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VIEW_TYPES"
.end annotation


# static fields
.field public static final Footer:I = 0x3

.field public static final Header:I = 0x1

.field public static final Normal:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;


# direct methods
.method private constructor <init>(Lcom/startapps/crossx/view/adapter/CommentsAdapter;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/CommentsAdapter$VIEW_TYPES;->this$0:Lcom/startapps/crossx/view/adapter/CommentsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
