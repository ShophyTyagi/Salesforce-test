trigger ContactTrigger on Contact (before insert) {
    for (Contact con : Trigger.new) {
        con.Description = 'New Contact - ' + String.valueOf(Date.today());
    }
}