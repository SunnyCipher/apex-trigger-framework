public class AccountTriggerHandler extends TriggerHandler {
    public override void beforeInsert() {
        for (Account acc : Trigger.new) {
            acc.Name = acc.Name != null ? acc.Name.trim() : null;
        }
    }

    public override void afterInsert() {
        System.debug('Account inserted: ' + Trigger.new);
    }
}
