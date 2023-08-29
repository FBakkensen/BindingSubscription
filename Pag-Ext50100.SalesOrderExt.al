pageextension 50100 SalesOrderExt extends "Sales Order"
{
    actions
    {
        addlast("P&osting")
        {
            action(PostShipment)
            {
                ApplicationArea = All;
                Caption = 'Post Shipment';
                Image = PostedShipment;

                trigger OnAction()
                var
                    PostShipment: Codeunit PostShipment;
                begin
                    PostShipment.Post(Rec);
                end;
            }
        }
    }
}
