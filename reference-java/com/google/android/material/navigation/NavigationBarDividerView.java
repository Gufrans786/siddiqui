package com.google.android.material.navigation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.MenuItemImpl;
import com.google.android.material.R;

public class NavigationBarDividerView extends FrameLayout implements NavigationBarMenuItemView {
    private boolean dividersEnabled;
    private boolean expanded;
    boolean onlyShowWhenExpanded;

    @Override
    public MenuItemImpl getItemData() {
        return null;
    }

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override
    public void setCheckable(boolean z) {
    }

    @Override
    public void setChecked(boolean z) {
    }

    @Override
    public void setEnabled(boolean z) {
    }

    @Override
    public void setIcon(Drawable drawable) {
    }

    @Override
    public void setShortcut(boolean z, char c) {
    }

    @Override
    public void setTitle(CharSequence charSequence) {
    }

    @Override
    public boolean showsIcon() {
        return false;
    }

    NavigationBarDividerView(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(R.layout.m3_navigation_menu_divider, (ViewGroup) this, true);
        updateVisibility();
    }

    @Override
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        updateVisibility();
    }

    @Override
    public void setExpanded(boolean z) {
        this.expanded = z;
        updateVisibility();
    }

    @Override
    public boolean isExpanded() {
        return this.expanded;
    }

    @Override
    public void setOnlyShowWhenExpanded(boolean z) {
        this.onlyShowWhenExpanded = z;
        updateVisibility();
    }

    @Override
    public boolean isOnlyVisibleWhenExpanded() {
        return this.onlyShowWhenExpanded;
    }

    public void updateVisibility() {
        setVisibility((!this.dividersEnabled || (!this.expanded && this.onlyShowWhenExpanded)) ? 8 : 0);
    }

    public void setDividersEnabled(boolean z) {
        this.dividersEnabled = z;
        updateVisibility();
    }

    @Override
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
