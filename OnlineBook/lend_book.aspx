<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lend_book.aspx.cs" Inherits="OnlineBook.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lend Book</title>
    <link href="layout/styles/lend.css" rel="stylesheet" type="text/css" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div class="div1">
            <img class="logo" src="images/BookAdd.png">
            <h2 class="title">Lend Book</h2>
        </div>

        <form class="form1" action="index.html" onsubmit="return checkPassword(this)">


            <div class="container">

                <div class="login-content">

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-book"></i>
                        </div>
                        <div class="div">
                            <h5>Book Name</h5>
                            <asp:TextBox ID="txtBookName" name="txtBookName" class="input" runat="server"></asp:TextBox>

                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-map"></i>
                        </div>
                        <div class="div">
                            <h5>Total Pages</h5>
                            <asp:TextBox ID="txtTotalPages" class="input" runat="server"></asp:TextBox>

                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-file-image"></i>
                        </div>
                        <div class="div">
                            <h5>Select</h5>

                         <%--  <input type="file" class="input" accept="image/*" required>--%>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-copy"></i>
                        </div>
                        <div class="div">
                            <h5>Available Book</h5>
                            <asp:TextBox ID="txtAvailableBook" class="input" runat="server"></asp:TextBox>

                        </div>
                    </div>


                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa">&#xf156;</i>
                        </div>
                        <div class="div">
                            <h5>Charge</h5>
                            <asp:TextBox ID="txtCharge" class="input" runat="server"></asp:TextBox>

                        </div>
                    </div>

                </div>



                <!-- ----------------------------Second Part of Grid-------------------------------->

                <div class="login-contents">

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-address-card"></i>
                        </div>
                        <div class="div">
                            <h5>Publisher</h5>
                            <asp:TextBox ID="txtPublisher" class="input" runat="server"></asp:TextBox>


                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-list"></i>
                        </div>
                        <div class="div">
                            <h5>Category</h5>
                           <!-- <select id="sel" class="input" name="" required>

                                <option class="gen" disabled selected value></option>

                                <option class="selopt">Arts & Music</option>
                                <option class="selopt">Biographies</option>
                                <option class="selopt">Business</option>
                                <option class="selopt">Comics</option>
                                <option class="selopt">Computers & Tech</option>
                                <option class="selopt">Cooking</option>
                                <option class="selopt">Edu & Reference</option>
                                <option class="selopt">Entertainment</option>
                                <option class="selopt">Health & Fitness</option>
                                <option class="selopt">History</option>
                                <option class="selopt">Hobbies & Crafts</option>
                                <option class="selopt">Home & Garden</option>
                                <option class="selopt">Horror</option>
                                <option class="selopt">Kids</option>
                                <option class="selopt">Literture & Fiction</option>
                                <option class="selopt">Medical</option>
                                <option class="selopt">Mysteries</option>
                                <option class="selopt">Parenting</option>
                                <option class="selopt">Religion</option>
                                <option class="selopt">Romance</option>
                                <option class="selopt">Sci-Fi & Fantasy</option>
                                <option class="selopt">Social Sciences</option>
                                <option class="selopt">Sports</option>
                                <option class="selopt">Teen</oaddressption>
                                  <option class="selopt">Travel</option>
                                    <option class="selopt">True Crime</option>
                                    <option class="selopt">Westerns</option>
                                    <option class="selopt">other</option>
                            </select> -->

                                   <asp:DropDownList ID="category" class="input" runat="server" >
                               
                                <asp:ListItem class="selopt" Value=""></asp:ListItem>
                                <asp:ListItem class="selopt">Art</asp:ListItem>
                                <asp:ListItem class="selopt">POem</asp:ListItem>    
                            
                            </asp:DropDownList>

                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-language"></i>
                        </div>
                        <div class="div">
                            <h5>Language</h5>
                          <%--  <select id="sel" class="input" name="" required>

                                <option class="gen" disabled selected value></option>
                                <option class="selopt">Gujrati</option>
                                <option class="selopt">Hindi</option>
                                <option class="selopt">English</option>

                            </select>--%>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-edit"></i>
                        </div>
                        <div class="div">
                            <h5>Edition</h5>
                            <asp:TextBox ID="txtEdition" class="input" runat="server"></asp:TextBox>


                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-info-circle"></i>
                        </div>
                        <div class="div">
                            <h5>Description</h5>
                            <asp:TextBox ID="txtDescription" class="input" runat="server"></asp:TextBox>


                        </div>
                    </div>

                    



                </div>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <script src="layout/scripts/main.js"></script>
                <asp:Button Text="Submit" runat="server" OnClick="Submit" />

                <!--     <input type="submit" class="btn" value="Upload" /> -->
        </form>
    </form>
</body>
</html>
