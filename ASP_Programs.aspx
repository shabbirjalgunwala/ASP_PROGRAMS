1. Create an ASP.NET Web Application demonstrating Code behind & page events
//Filename - home.aspx
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br/>
        <asp:Button ID="Button1" runat="server" Text="Click Me" OnClick="Button1_Click" />
    </form>
</body>


//Filename - home.aspx.cs
protected void Button1_Click(object sender, EventArgs e)
{
    Label1.Text = "Hello, Welcome to My Page!";
}

==============================================================================================

2.	Create an ASP.NET Web Application to demonstrate Web Server Control
//Filename - home.aspx
<form id="form1" runat="server">
    
    <asp:Label ID="lbl1" runat="server" Text="Enter Your Name :"></asp:Label>
    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbl2" runat="server" Text="Gender : "></asp:Label>
    <asp:RadioButton ID="rb1" runat="server" GroupName="gender" Text="Male" />
    <asp:RadioButton ID="rb2" runat="server" GroupName="gender" Text="Female" />
    <br />
    <asp:Label ID="lbl3" runat="server" Text="Country : "></asp:Label>
    <asp:DropDownList ID="ddl1" runat="server">
        <asp:ListItem>India</asp:ListItem>
        <asp:ListItem>USA</asp:ListItem>
        <asp:ListItem>Russia</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lbl4" runat="server" Text="Select Courses : "></asp:Label>
    <asp:CheckBox ID="cb1" runat="server" Text="Software" />
    <asp:CheckBox ID="cb2" runat="server" Text="Java" />
    <asp:CheckBox ID="cb3" runat="server" Text="DS" />
    <asp:CheckBox ID="cb4" runat="server" Text="ASP" />
    <br />
    <asp:Button ID="btn1" runat="server" Text="Submit" />
    
</form>

==============================================================================================

3.	Create an ASP.NET Web Application to demonstrate Validation Control
//Filename - home.aspx
<form id="form1" runat="server">
    
    <asp:Label ID="Label1" runat="server" Text="Enter Your Name:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter Your Age:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Age Must be Greater than 18" 
        MaximumValue="99" MinimumValue="18"></asp:RangeValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Create Password"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="ReEnter Password"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
        ErrorMessage="Password Not Matched"></asp:CompareValidator>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    
</form>

==============================================================================================

4.	Create an ASP.NET Web Application to demonstrate AdRotator Control
//Filename - home.aspx
<form id="form1" runat="server">
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml">
    </asp:XmlDataSource>
</form>


//Advertisement.xml
<?xml version="1.0" encoding="utf-8" ?>
<Advertisements>
  <Ad>
    <ImageUrl>~/img/image1.jpg</ImageUrl>
    <NavigateUrl>http://www.google.com</NavigateUrl>
    <Height>100</Height>
    <Width>250</Width>
  </Ad>
  <Ad>
    <ImageUrl>~/img/image2.jpg</ImageUrl>
    <NavigateUrl>http://www.youtube.com</NavigateUrl>
    <Height>100</Height>
    <Width>250</Width>
  </Ad>
</Advertisements>

==============================================================================================

5.	Create an ASP.NET Web Application to demonstrate Global.asax file
//Filename - Global.asax
protected void Application_Start(object sender, EventArgs e)
{
    Application["VisitCount"] = 0;
}
protected void Session_Start(object sender, EventArgs e)
{
    Session["SessionCount"]=0;
    Application["VisitCount"] = (int)Application["VisitCount"] + 1;
}

//Default.aspx.cs
protected void Page_Load(object sender, EventArgs e)
{
    Session["SessionCount"] = (int)Session["SessionCount"] + 1;
    Response.Write("Visit Count = " + Application["VisitCount"]+"<br>");
    Response.Write("Session Count = " + Session["SessionCount"] + "<br>");
}

==============================================================================================

6.	Create an ASP.NET Web Application to demonstrate Master Page
//Filename - Site.master
<body>    
    <form id="form1" runat="server">    
        <div>    
            <h1>This is My Website</h1>        
            <nav>            
                <a href="home.aspx">Home</a>            
                <a href="about.aspx">About</a>            
                <a href="contact.aspx">Contact</a>        
            </nav>    
        </div>    
        <div>        
            <asp:ContentPlaceHolder ID="contentdemo" runat="server">        
            </asp:ContentPlaceHolder>    
        </div>    
        <div>    
            <h2>ThankYou For Visiting</h2>    
        </div>    
    </form> 
</body>


//Filename - home.aspx 
<asp:Content ID="Content1" ContentPlaceHolderID="contentdemo" Runat="Server"> 
    This is Home Page 
</asp:Content>


//Filename - about.aspx 
<asp:Content ID="Content1" ContentPlaceHolderID="contentdemo" Runat="Server"> 
    This is About Page 
</asp:Content>


//Filename - contact.aspx 
<asp:Content ID="Content1" ContentPlaceHolderID="contentdemo" Runat="Server"> 
    This is contact Page 
</asp:Content>

==============================================================================================

7.	Create an ASP.NET Web Application to demonstrate Session
//Filename - home.aspx
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Enter your name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
    <asp:Label ID="lblWelcome" runat="server" Visible="False"></asp:Label>
</form>


//Filename - home.aspx.cs
protected void btnSubmit_Click(object sender, EventArgs e)
{
    Session["Name"] = txtName.Text;
    lblWelcome.Visible = true;
    if (Session["Name"] != null)
    {
        lblWelcome.Text = "Welcome, " + Session["Name"].ToString() + "!";
    }
    else
    {
        lblWelcome.Text = "Session expired. Please Re-enter your name.";
    }
}

==============================================================================================

8.	Create an ASP.NET Web Application to demonstrate Cookies
//Filename - home.aspx
<form id="form1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Create Cookie" 
        onclick="Button1_Click" />
    <br /><br />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <br /><br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Delete Cookie" Visible="False" />
    <br /><br />
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
</form>


//Filename - home.aspx.cs
protected void Button1_Click(object sender, EventArgs e)
{
    Label1.Visible = true;
    HttpCookie mycookie = new HttpCookie("Name", "Shabbir");
    mycookie.Expires = DateTime.Now.AddMinutes(1);
    Response.Cookies.Add(mycookie);
    Label1.Text += "Cookie Name = " + mycookie.Value.ToString();
    Button2.Visible = true;
    Label2.Text = null;
}
protected void Button2_Click(object sender, EventArgs e)
{
    Label1.Text = null;
    Label2.Visible = true;
    HttpCookie mycookie = Request.Cookies["Name"];
    mycookie.Expires = DateTime.Now.AddDays(-1);
    Response.Cookies.Add(mycookie);
    Label2.Text = "Cookie Deleted";
    
}

==============================================================================================

9.	Create an ASP.NET Web Application to demonstrate Intrinsic objects
Filename - home.aspx
<form id="form1" runat="server">
    <asp:Label ID="lblInfo" runat="server" />
</form>


Filename - home.aspx.cs
protected void Page_Load(object sender, EventArgs e)
{
    // Demonstrating Request Object
    string browser = Request.Browser.Browser;
    string ip = Request.UserHostAddress;

    // Demonstrating Response Object
    Response.Write("Intrinsic Object Demo: ");

    // Demonstrating Session Object
    Session["Username"] = "Shabbir";
    string sessionValue = Session["Username"].ToString();

    // Demonstrating Application Object
    Application["AppName"] = "Intrinsic Demo App";
    string appValue = Application["AppName"].ToString();

    // Display all results
    lblInfo.Text ="</b><br/>Browser: " + browser +
            "<br/>IP Address: " + ip +
            "<br/>Session Username: " + sessionValue +
            "<br/>Application Name: " + appValue;
}

==============================================================================================
EXTRA PROGRAMS
==============================================================================================

//StateManagement
//Filename - home.aspx
<form id="form1" runat="server">
    <asp:Button ID="create" runat="server" onclick="Button1_Click" 
        Text="Start StateManagement" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" 
        Text="State Managment Started" Visible="False"></asp:Label>
</form>

//Filename - home.aspx.cs
protected void Button1_Click(object sender, EventArgs e)
{
    Label1.Visible = true;

    //ViewState
    ViewState["Name"] = "Shabbir"; // Store value
    Label1.Text += "<br>1. ViewState Name = "+ViewState["Name"].ToString();

    //Session
    Session["UserName"] = "Shabbir";
    Label1.Text += "<br>2. Session UserName = "+Session["UserName"].ToString();
    
    //Application
    Application["Counter"] = 100;
    Label1.Text += "<br>3. Application Count = "+Application["Counter"].ToString();


    //Cookie
    HttpCookie mycookie = new HttpCookie("Name","Shabbir");
    mycookie.Expires = DateTime.Now.AddMinutes(1);
    Response.Cookies.Add(mycookie);
    Label1.Text += "<br>4. Cookie Name = " + mycookie.Value.ToString();
}

==============================================================================================

//TreeView Control
<asp:TreeView ID="TreeView1" runat="server" >
    <Nodes>
        <asp:TreeNode Text="Home" NavigateUrl="Home.aspx">
            <asp:TreeNode Text="About Us" NavigateUrl="About.aspx"></asp:TreeNode>
            <asp:TreeNode Text="Contact Us" NavigateUrl="Contact.aspx"></asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Services" NavigateUrl="Services.aspx">
            <asp:TreeNode Text="Web Design" NavigateUrl="WebDesign.aspx"></asp:TreeNode>
            <asp:TreeNode Text="SEO" NavigateUrl="SEO.aspx"></asp:TreeNode>
        </asp:TreeNode>
    </Nodes>
</asp:TreeView>

==============================================================================================

//Menu Control
<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem Text="Home" NavigateUrl="Home.aspx"></asp:MenuItem>
        <asp:MenuItem Text="About" NavigateUrl="about.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Contact" NavigateUrl="Contact.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Support" NavigateUrl="support.aspx"></asp:MenuItem>
    </Items>
</asp:Menu>

==============================================================================================