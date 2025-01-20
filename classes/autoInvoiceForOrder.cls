public class autoInvoiceForOrder {
    public static void afterInsert(List<Order> newOrders){
        List<Invoice> InsertInvoices = new List<Invoice>();
        List<Order> UpdateOrder = new List<Order>();
        for(Order od : newOrders){
            Invoice invcs = new Invoice();
            invcs.DueDate = od.EndDate.addDays(30);
            invcs.Status = 'Pending';
            invcs.Description = od.Description;
            InsertInvoices.add(invcs);

            od.Status = 'Activated';
            UpdateOrder.add(od);
        }
    }
}