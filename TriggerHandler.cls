public abstract class TriggerHandler {
    public void beforeInsert() {}
    public void beforeUpdate() {}
    public void beforeDelete() {}
    public void afterInsert() {}
    public void afterUpdate() {}
    public void afterDelete() {}
    public void afterUndelete() {}

    public void run() {
        if (Trigger.isBefore) {
            if (Trigger.isInsert) beforeInsert();
            else if (Trigger.isUpdate) beforeUpdate();
            else if (Trigger.isDelete) beforeDelete();
        } else if (Trigger.isAfter) {
            if (Trigger.isInsert) afterInsert();
            else if (Trigger.isUpdate) afterUpdate();
            else if (Trigger.isDelete) afterDelete();
            else if (Trigger.isUndelete) afterUndelete();
        }
    }
}
