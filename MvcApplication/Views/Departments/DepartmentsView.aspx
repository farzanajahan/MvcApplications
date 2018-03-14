<%@ Page Language="C#" Inherits="MvcApplication.Views.Departments.DepartmentsView" CodeBehind="~/Views/Departments/DepartmentsView.aspx.cs" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeadContent">
    <script type="text/javascript">
        function toggleView()
        {
            var toggle = document.getElementById("toggle");
            var value = toggle.innerText;

            if (value == "+")
            {
                toggle.innerText = "-";
                document.getElementById("hiddenRow").style = "display:block;";
            }
            else
            {
                toggle.innerText = "+";
                document.getElementById("hiddenRow").style = "display:none;";
            }
        }
    </script>

</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <div>
        <table>
            <tr><td>Global Department Name</td></tr>
        <% foreach (var item in (Model as List<ClassLibrary.Department>)) { %> 

            <tr><td onclick="toggleView();">
                <%if (item.GlobalDeptName == "ANCILLARY SUPPORT") {%>
                <span id="toggle">+</span>
                <%} %>
                <%= item.GlobalDeptName%></td></tr>
            <%if (item.GlobalDeptName == "ANCILLARY SUPPORT") {%>
            <tr id="hiddenRow" style="display:none;"><td><table><tbody><tr><td>
                <div id="assigned_dept_1" class="assignedDept">
              
			  <div id="fast_dept_1" class="systemListing">
                <span class="system_heading">FAST</span>
                <table id="fast_table">
                  <thead>
                    <tr>
                      
                      <th>USF_DEPT_CODE</th>
                      <th>USF_DEPT_NAME</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                    <tr id="SC_fast_GK_1_DK_487" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';" class="trNoHover">
                      
                      <td onclick="promptReassignDept(this.parentNode)">600120</td>
                      <td onclick="promptReassignDept(this.parentNode)">BUDGET MGMT VP-OFC I&amp;R</td>
                    </tr>
                    
                    <tr id="SC_fast_GK_1_DK_702" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';" class="trNoHover">
                      
                      <td onclick="promptReassignDept(this.parentNode)">610900</td>
                      <td onclick="promptReassignDept(this.parentNode)">COM ANCILLARY SUPPORT</td>
                    </tr>
                    
                    <tr id="SC_fast_GK_1_DK_90" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';" class="trNoHover">
                      
                      <td onclick="promptReassignDept(this.parentNode)">680801</td>
                      <td onclick="promptReassignDept(this.parentNode)">HSC VP ANCILLARY SUPPORT</td>
                    </tr>
                    
                    <tr id="SC_fast_GK_1_DK_346" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';">
                      
                      <td onclick="promptReassignDept(this.parentNode)">689501</td>
                      <td onclick="promptReassignDept(this.parentNode)">HSC CASUALTY INSURANCE</td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
			  
              <div id="samas_dept_1" class="systemListing">
                <span class="system_heading">SAMAS</span>
                <table id="samas_table">
                  <thead>
                    <tr>
                      <th>SAMAS_DEPT</th>
                      <th>SAMAS_TITLE</th>
                    </tr>
                  </thead>
                  <tbody>
                  
                    <tr id="SC_samas_GK_1_DK_228" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';" class="trNoHover">
                      <td onclick="promptReassignDept(this.parentNode)">6007</td>
                      <td onclick="promptReassignDept(this.parentNode)">Hsc-casualty Insurance        </td>
                    </tr>
                  
                    <tr id="SC_samas_GK_1_DK_331" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';">
                      <td onclick="promptReassignDept(this.parentNode)">6507</td>
                      <td onclick="promptReassignDept(this.parentNode)">Insurance                     </td>
                    </tr>
                  
                    <tr id="SC_samas_GK_1_DK_349" onmouseover="this.className='trHover';" onmouseout="this.className='trNoHover';" class="trNoHover">
                      <td onclick="promptReassignDept(this.parentNode)">6808</td>
                      <td onclick="promptReassignDept(this.parentNode)">Ancillary Support             </td>
                    </tr>
                  
                  </tbody>
                </table>
              </div>
			  
            </div>

                       </td></tr>

                </tbody></table>
                </td>
            </tr>
            <%} %>            
        <%} %>
        </table>
    </div>
</asp:Content>