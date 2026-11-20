package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import java.util.ArrayList;

public interface ZIMGroupAttributesOperatedCallback {
    void onGroupAttributesOperated(String groupID, ArrayList<String> errorKeys, ZIMError errorInfo);
}
