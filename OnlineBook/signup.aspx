<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="OnlineBook.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>

    <link href="layout/styles/signup.css" rel="stylesheet" type="text/css" media="all">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>


</head>
<body>
    <form id="form1" runat="server">

        <!-------Navbar End--------->
        <div class="div1">
            <img class="logo" src="images/avatar.svg">
            <h2 class="title">Welcome</h2>
        </div>

        <form method="POST"  class="form1"  onsubmit="return checkPassword(this)">


            <div class="container">

                <div class="login-content">

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Full Name</h5>
                            <input type="text" class="input" required>

                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-crosshairs"></i>
                        </div>
                        <div class="div">
                            <h5>Pin Code</h5>
                            <input type="text" maxlength="6" minlength="6" class="input" required>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="div">
                            <h5>Zone & Area</h5>
                            <select id="sel" class="input" name="zone" required>

                                <option class="gen" disabled selected value></option>

                                <option class="selopt">North Sardarnagar</option>
                                <option class="selopt">North Noblenagar</option>
                                <option class="selopt">North Narodamuthiya</option>
                                <option class="selopt">North Saijpur</option>
                                <option class="selopt">North Meghaninagar</option>
                                <option class="selopt">North Naroda road </option>
                                <option class="selopt">North India colony</option>
                                <option class="selopt">North Krushnagar</option>
                                <option class="selopt">North Naroda</option>
                                <option class="selopt">North Nava Naroda</option>
                                <option class="selopt">North Kubernagar</option>
                                <option class="selopt">North Asarva</option>
                                <option class="selopt">North Thakkarbapanagar</option>
                                <option class="selopt">North Saraspur</option>

                                <option class="gen" disabled selected value></option>
                                <option class="selopt">South Maninagar</option>
                                <option class="selopt">South Kankaria</option>
                                <option class="selopt">South Baherampura</option>
                                <option class="selopt">South Danilimda</option>
                                <option class="selopt">South Ghodasar</option>
                                <option class="selopt">South Indrapuri</option>
                                <option class="selopt">South Khokhara</option>
                                <option class="selopt">South Vatva</option>
                                <option class="selopt">South Isanpur</option>
                                <option class="selopt">South Lambha</option>

                                <option class="gen" disabled selected value></option>
                                <option class="selopt">Central Khadia</option>
                                <option class="selopt">Central Kalupur</option>
                                <option class="selopt">Central Dariapur</option>
                                <option class="selopt">Central Shahpur</option>
                                <option class="selopt">Central Raikhad</option>
                                <option class="selopt">Central Jamalpur</option>
                                <option class="selopt">Central Dudheshwar</option>
                                <option class="selopt">Central Madhupura</option>
                                <option class="selopt">Central Girdharnagar</option>

                                <option class="gen" disabled selected value></option>
                                <option class="selopt">East Bapunagar</option>
                                <option class="selopt">East Rakhiyal</option>
                                <option class="selopt">East Gomatipur</option>
                                <option class="selopt">East Rajpur</option>
                                <option class="selopt">East Amraiwadi</option>
                                <option class="selopt">East Bhaipura</option>
                                <option class="selopt">East Mahavirnagar</option>
                                <option class="selopt">East Viratnagar</option>
                                <option class="selopt">East odhav</option>
                                <option class="selopt">East Arbudanagar</option>
                                <option class="selopt">East Vastral</option>
                                <option class="selopt">East Ramol</option>
                                <option class="selopt">East Nikol</option>


                                <option class="gen" disabled selected value></option>
                                <option class="selopt">West Paldi</option>
                                <option class="selopt">West Vasna</option>
                                <option class="selopt">West Ambawadi</option>
                                <option class="selopt">West Navrangpura</option>
                                <option class="selopt">West Stadium</option>
                                <option class="selopt">West Narnapura</option>
                                <option class="selopt">West New Wadaj</option>
                                <option class="selopt">West Juna Wadaj</option>
                                <option class="selopt">West Sabarmati</option>
                                <option class="selopt">West Chandkheda-Motera</option>

                                <option class="gen" disabled selected value></option>
                                <option class="selopt">New West Sarkhej</option>
                                <option class="selopt">New West Vejalpur</option>
                                <option class="selopt">New West Jodhpur</option>
                                <option class="selopt">New West Bodakdev</option>
                                <option class="selopt">New West Thaltej</option>
                                <option class="selopt">New West Ghatlodia</option>
                                <option class="selopt">New West Chandlodia</option>
                                <option class="selopt">New West Ranip</option>
                                <option class="selopt">New West Gota</option>
                                <option class="selopt">New West Kali</option>


                            </select>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Password</h5>
                            <input type="password" name="pwd" minlength="8" class="input" required>
                        </div>
                    </div>

                </div>



                <!-- ----------------------------Second Part of Grid-------------------------------->

                <div class="login-contents">

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="div">
                            <h5>Mobile</h5>
                            <input type="text" class="input" maxlength="10" minlength="10" required>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="div">
                            <h5>Email</h5>
                            <input type="email" class="input" required>
                        </div>
                    </div>

                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-home"></i>
                        </div>
                        <div class="div">
                            <h5>Address</h5>
                            <input type="text" class="input" required>
                        </div>
                    </div>




                    <div class="input-div pass">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Confirm password </h5>
                            <input type="password" name="conpwd" minlength="8" class="input" required>
                        </div>
                    </div>

                </div>

            </div>
            <script src="layout/scripts/main.js"></script>

            <script type="text/javascript" src="./main.js"></script>
            <a class="linklogin" href="login.aspx">Sign in insted?</a>
            <input type="submit" class="btn" value="Signup">
        </form>
    </form>
</body>
</html>
