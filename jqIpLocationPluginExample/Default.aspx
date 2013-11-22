<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jqIpLocationPluginExample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jqIpLocation/jquery-1.6.3.min.js"></script>
    <script src="jqIpLocation/jqIpLocation.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript">
                $(function () {

                    var ipAddress = "213.243.4.20";

                    $.jqIpLocation({
                        ip: ipAddress,
                        success: function (location) {
                            $("#lblIP").text(ipAddress);
                            $("#lblCountry").text(location.countryName);
                            $("#lblCountryCode").text(location.countryCode);
                            $("#lblCity").text(location.cityName);
                            $("#lblRegion").text(location.regionName);
                            $("#lblLatitude").text(location.latitude);
                            $("#lblLongitude").text(location.longitude);
                        }
                    });

                });
            </script>

            <table class="CSSTableGenerator">
                <tbody>
                    <tr>
                        <td>IP</td>
                        <td>
                            <asp:Label ID="lblIP" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Country</td>
                        <td>
                            <asp:Label ID="lblCountry" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Country Code</td>
                        <td>
                            <asp:Label ID="lblCountryCode" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td>
                            <asp:Label ID="lblCity" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Region</td>
                        <td>
                            <asp:Label ID="lblRegion" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Latitude</td>
                        <td>
                            <asp:Label ID="lblLatitude" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Longitude</td>
                        <td>
                            <asp:Label ID="lblLongitude" runat="server" ClientIDMode="Static"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
    </form>
</body>
</html>
