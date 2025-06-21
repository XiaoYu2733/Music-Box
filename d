.class public final La/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# instance fields
.field public final synthetic a:Lu3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/d<",
            "Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/d<",
            "-",
            "Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, La/d;->a:Lu3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .registers 4

    iget-object v0, p0, La/d;->a:Lu3/d;

    new-instance v1, La/g;

    invoke-direct {v1, p1}, La/g;-><init>(I)V

    invoke-static {v1}, Lk/b;->v(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .registers 3

    const-string v0, "screenshot"

    invoke-static {p1, v0}, Lk/b;->n(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/d;->a:Lu3/d;

    invoke-interface {v0, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method