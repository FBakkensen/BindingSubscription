codeunit 50100 PostShipment
{
    procedure Post(SalesHeader: Record "Sales Header")
    var
        SalesPost: Codeunit "Sales-Post";
        SalesPostSub: Codeunit SalesPostSub;
    begin
        BindSubscription(SalesPostSub);
        SalesHeader.Ship := true;
        SalesHeader.Invoice := false;
        SalesPost.Run(SalesHeader);
        UnbindSubscription(SalesPostSub);
    end;

}
