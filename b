.class public final La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls3/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, La/b$a;->e:La/b$a;

    invoke-static {v0}, Lk/b;->I(Lc4/a;)Ls3/c;

    move-result-object v0

    check-cast v0, Ls3/g;

    sput-object v0, La/b;->a:Ls3/g;

    return-void
.end method

.method public static final a()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_12

    sget-object v0, Lcom/stardust/view/accessibility/AccessibilityService;->Companion:Lcom/stardust/view/accessibility/AccessibilityService$Companion;

    invoke-virtual {v0}, Lcom/stardust/view/accessibility/AccessibilityService$Companion;->getInstance()Lcom/stardust/view/accessibility/AccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->clearCache()Z

    :cond_11
    return-void

    .line 1
    :cond_12
    sget-object v0, La/b;->a:Ls3/g;

    invoke-virtual {v0}, Ls3/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a;

    .line 2
    iget-object v1, v0, La/a;->b:Ljava/lang/reflect/Method;

    .line 3
    iget-object v0, v0, La/a;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method