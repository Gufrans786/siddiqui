package im.zego.zim.callback;

import im.zego.zim.entity.ZIMError;
import im.zego.zim.entity.ZIMMessageReceiptInfo;
import java.util.ArrayList;

public interface ZIMMessageReceiptsInfoQueriedCallback {
    void onMessageReceiptsInfoQueried(ArrayList<ZIMMessageReceiptInfo> infos, ArrayList<Long> errorMessageIDs, ZIMError errorInfo);
}
