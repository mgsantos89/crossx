.class public final Lcom/startapps/crossx/model/WeekCalendarModel;
.super Ljava/lang/Object;
.source "WeekCalendarModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/startapps/crossx/model/WeekCalendarModel;",
        "",
        "()V",
        "weekNumber",
        "",
        "getWeekNumber",
        "()I",
        "setWeekNumber",
        "(I)V",
        "CrossX_1.15.10_86_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private weekNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWeekNumber()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/startapps/crossx/model/WeekCalendarModel;->weekNumber:I

    return v0
.end method

.method public final setWeekNumber(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/startapps/crossx/model/WeekCalendarModel;->weekNumber:I

    return-void
.end method
