<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="Timetable.aspx.vb" Inherits="Admin_Timetable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
Timetable
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <asp:GridView class="table table-bordered"  ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Timetable_id">
                <Columns>
                     <asp:BoundField DataField="Timetable_id" HeaderText="Timetable id" SortExpression="Timetable_id" InsertVisible="False" ReadOnly="True"/>
                   
                    <asp:BoundField DataField="Start_time" HeaderText="Start time" SortExpression="Start_time" />
                    <asp:BoundField DataField="End_time" HeaderText="End time" SortExpression="End_time" />
                  
                     <asp:BoundField DataField="Batch_name" HeaderText="Batch name" SortExpression="Batch_name" />
                     <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                      <asp:TemplateField ShowHeader="False">
                        <HeaderTemplate>
                        Actions
                    </HeaderTemplate>
                    
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/edit.png" CausesValidation="False" CommandName="Select" Height="40px" Width="40px" ToolTip="Edit"/>
                            <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click" ImageUrl="~/icons/delete.png" Height="40px" Width="40px" ToolTip="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>  
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add New Timetable" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Timetable] WHERE [Timetable_id] = @Timetable_id" InsertCommand="INSERT INTO [Timetable] ([Day_id], [Batch_id], [Start_time], [End_time]) VALUES (@Day_id, @Batch_id, @Start_time, @End_time)" SelectCommand="SELECT Timetable.Timetable_id, Timetable.Day_id, Timetable.Batch_id, Timetable.Start_time, Timetable.End_time, Batch.Batch_name, Day.Day FROM Timetable INNER JOIN Batch ON Timetable.Batch_id = Batch.Batch_id INNER JOIN Day ON Timetable.Day_id = Day.Day_id" UpdateCommand="UPDATE [Timetable] SET [Day_id] = @Day_id, [Batch_id] = @Batch_id, [Start_time] = @Start_time, [End_time] = @End_time WHERE [Timetable_id] = @Timetable_id">
                <DeleteParameters>
                    <asp:Parameter Name="Timetable_id" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Day_id" Type="Decimal" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Start_time" Type="String" />
                    <asp:Parameter Name="End_time" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Day_id" Type="Decimal" />
                    <asp:Parameter Name="Batch_id" Type="Decimal" />
                    <asp:Parameter Name="Start_time" Type="String" />
                    <asp:Parameter Name="End_time" Type="String" />
                    <asp:Parameter Name="Timetable_id" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <div class="m-t-20">
                        <div class="form-group">
                            <label>Start Time</label>
                            <asp:TextBox ID="txtAreaName" class="form-control" required placeholder="Start Time" runat="server" TextMode="Time"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>End Time</label>
                            <asp:TextBox ID="TextBox1" class="form-control" required placeholder="End Time" runat="server"  TextMode="Time"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Day</label>
                            <asp:DropDownList ID="txtCity" runat="server" class="form-control" required DataSourceID="SqlDataSource2" DataTextField="Day" DataValueField="Day_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Day_id], [Day] FROM [Day]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <label>Batch</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required DataSourceID="SqlDataSource3" DataTextField="Batch_name" DataValueField="Batch_id"></asp:DropDownList>

                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Batch_id], [Batch_name] FROM [Batch]"></asp:SqlDataSource>

                        </div>
                        <div class="form-group">
                            <div>
                                <asp:Button ID="btnInsert" runat="server" Text="Insert" class="btn btn-primary" />
                                <asp:Button ID="btnCancel" formnovalidate="formnovalidate" runat="server" Text="Cancel" class="btn btn-default" CausesValidation="False" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </asp:View>
    </asp:MultiView>
</asp:Content>

