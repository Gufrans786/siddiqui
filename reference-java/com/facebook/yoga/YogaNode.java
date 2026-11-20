package com.facebook.yoga;

import javax.annotation.Nullable;

public abstract class YogaNode implements YogaProps {

    public interface Inputs {
        void freeze(YogaNode yogaNode, @Nullable YogaNode yogaNode2);
    }

    public abstract void addChildAt(YogaNode yogaNode, int i);

    public abstract void calculateLayout(float f, float f2);

    public abstract YogaNode cloneWithChildren();

    public abstract YogaNode cloneWithoutChildren();

    public abstract void copyStyle(YogaNode yogaNode);

    public abstract void dirty();

    @Override
    public abstract YogaAlign getAlignContent();

    @Override
    public abstract YogaAlign getAlignItems();

    @Override
    public abstract YogaAlign getAlignSelf();

    @Override
    public abstract float getAspectRatio();

    @Override
    public abstract float getBorder(YogaEdge yogaEdge);

    @Override
    public abstract YogaBoxSizing getBoxSizing();

    public abstract YogaNode getChildAt(int i);

    public abstract int getChildCount();

    @Nullable
    public abstract Object getData();

    public abstract YogaDisplay getDisplay();

    public abstract float getFlex();

    @Override
    public abstract YogaValue getFlexBasis();

    @Override
    public abstract YogaFlexDirection getFlexDirection();

    @Override
    public abstract float getFlexGrow();

    @Override
    public abstract float getFlexShrink();

    public abstract YogaValue getGap(YogaGutter yogaGutter);

    @Override
    public abstract YogaValue getHeight();

    @Override
    public abstract YogaJustify getJustifyContent();

    public abstract float getLayoutBorder(YogaEdge yogaEdge);

    public abstract YogaDirection getLayoutDirection();

    public abstract float getLayoutHeight();

    public abstract float getLayoutMargin(YogaEdge yogaEdge);

    public abstract float getLayoutPadding(YogaEdge yogaEdge);

    public abstract float getLayoutWidth();

    public abstract float getLayoutX();

    public abstract float getLayoutY();

    @Override
    public abstract YogaValue getMargin(YogaEdge yogaEdge);

    @Override
    public abstract YogaValue getMaxHeight();

    @Override
    public abstract YogaValue getMaxWidth();

    @Override
    public abstract YogaValue getMinHeight();

    @Override
    public abstract YogaValue getMinWidth();

    public abstract YogaOverflow getOverflow();

    @Nullable
    public abstract YogaNode getOwner();

    @Override
    public abstract YogaValue getPadding(YogaEdge yogaEdge);

    @Nullable
    @Deprecated
    public abstract YogaNode getParent();

    @Override
    public abstract YogaValue getPosition(YogaEdge yogaEdge);

    @Override
    public abstract YogaPositionType getPositionType();

    @Override
    public abstract YogaDirection getStyleDirection();

    @Override
    public abstract YogaValue getWidth();

    public abstract YogaWrap getWrap();

    public abstract boolean hasNewLayout();

    public abstract int indexOf(YogaNode yogaNode);

    public abstract boolean isBaselineDefined();

    public abstract boolean isDirty();

    public abstract boolean isMeasureDefined();

    public abstract boolean isReferenceBaseline();

    public abstract void markLayoutSeen();

    public abstract YogaNode removeChildAt(int i);

    public abstract void reset();

    @Override
    public abstract void setAlignContent(YogaAlign yogaAlign);

    @Override
    public abstract void setAlignItems(YogaAlign yogaAlign);

    @Override
    public abstract void setAlignSelf(YogaAlign yogaAlign);

    public abstract void setAlwaysFormsContainingBlock(boolean z);

    @Override
    public abstract void setAspectRatio(float f);

    @Override
    public abstract void setBaselineFunction(YogaBaselineFunction yogaBaselineFunction);

    @Override
    public abstract void setBorder(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setBoxSizing(YogaBoxSizing yogaBoxSizing);

    public abstract void setData(Object obj);

    @Override
    public abstract void setDirection(YogaDirection yogaDirection);

    public abstract void setDisplay(YogaDisplay yogaDisplay);

    @Override
    public abstract void setFlex(float f);

    @Override
    public abstract void setFlexBasis(float f);

    @Override
    public abstract void setFlexBasisAuto();

    @Override
    public abstract void setFlexBasisFitContent();

    @Override
    public abstract void setFlexBasisMaxContent();

    @Override
    public abstract void setFlexBasisPercent(float f);

    @Override
    public abstract void setFlexBasisStretch();

    @Override
    public abstract void setFlexDirection(YogaFlexDirection yogaFlexDirection);

    @Override
    public abstract void setFlexGrow(float f);

    @Override
    public abstract void setFlexShrink(float f);

    public abstract void setGap(YogaGutter yogaGutter, float f);

    public abstract void setGapPercent(YogaGutter yogaGutter, float f);

    @Override
    public abstract void setHeight(float f);

    @Override
    public abstract void setHeightAuto();

    @Override
    public abstract void setHeightFitContent();

    @Override
    public abstract void setHeightMaxContent();

    @Override
    public abstract void setHeightPercent(float f);

    @Override
    public abstract void setHeightStretch();

    @Override
    public abstract void setIsReferenceBaseline(boolean z);

    @Override
    public abstract void setJustifyContent(YogaJustify yogaJustify);

    @Override
    public abstract void setMargin(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setMarginAuto(YogaEdge yogaEdge);

    @Override
    public abstract void setMarginPercent(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setMaxHeight(float f);

    @Override
    public abstract void setMaxHeightFitContent();

    @Override
    public abstract void setMaxHeightMaxContent();

    @Override
    public abstract void setMaxHeightPercent(float f);

    @Override
    public abstract void setMaxHeightStretch();

    @Override
    public abstract void setMaxWidth(float f);

    @Override
    public abstract void setMaxWidthFitContent();

    @Override
    public abstract void setMaxWidthMaxContent();

    @Override
    public abstract void setMaxWidthPercent(float f);

    @Override
    public abstract void setMaxWidthStretch();

    @Override
    public abstract void setMeasureFunction(YogaMeasureFunction yogaMeasureFunction);

    @Override
    public abstract void setMinHeight(float f);

    @Override
    public abstract void setMinHeightFitContent();

    @Override
    public abstract void setMinHeightMaxContent();

    @Override
    public abstract void setMinHeightPercent(float f);

    @Override
    public abstract void setMinHeightStretch();

    @Override
    public abstract void setMinWidth(float f);

    @Override
    public abstract void setMinWidthFitContent();

    @Override
    public abstract void setMinWidthMaxContent();

    @Override
    public abstract void setMinWidthPercent(float f);

    @Override
    public abstract void setMinWidthStretch();

    public abstract void setOverflow(YogaOverflow yogaOverflow);

    @Override
    public abstract void setPadding(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setPaddingPercent(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setPosition(YogaEdge yogaEdge, float f);

    public abstract void setPositionAuto(YogaEdge yogaEdge);

    @Override
    public abstract void setPositionPercent(YogaEdge yogaEdge, float f);

    @Override
    public abstract void setPositionType(YogaPositionType yogaPositionType);

    @Override
    public abstract void setWidth(float f);

    @Override
    public abstract void setWidthAuto();

    @Override
    public abstract void setWidthFitContent();

    @Override
    public abstract void setWidthMaxContent();

    @Override
    public abstract void setWidthPercent(float f);

    @Override
    public abstract void setWidthStretch();

    @Override
    public abstract void setWrap(YogaWrap yogaWrap);
}
