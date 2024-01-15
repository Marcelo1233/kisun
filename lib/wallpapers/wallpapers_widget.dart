import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wallpapers_model.dart';
export 'wallpapers_model.dart';

class WallpapersWidget extends StatefulWidget {
  const WallpapersWidget({Key? key}) : super(key: key);

  @override
  _WallpapersWidgetState createState() => _WallpapersWidgetState();
}

class _WallpapersWidgetState extends State<WallpapersWidget> {
  late WallpapersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WallpapersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).redDark,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'jpk3amk6' /* Wallpapers */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://p2.trrsf.com.br/image/fget/cf/540/960/smart/images.terra.com/2023/01/02/shinichi-kudo-1iv6lviwv0q46.jpg',
                              width: 192.0,
                              height: 215.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://i.pinimg.com/736x/ac/07/4c/ac074cf6e156cdcac6125a57c119ec66.jpg',
                                width: 178.0,
                                height: 147.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://geekninja.com.br/wp-content/uploads/2023/07/Personagens-de-Animes-1200x900.jpg',
                              width: 192.0,
                              height: 215.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://img.freepik.com/fotos-premium/personagem-masculino-de-anime_664559-474.jpg?w=2000',
                                width: 178.0,
                                height: 147.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://metagalaxia.com.br/wp-content/uploads/2022/07/L-_Death-Note_.webp',
                              width: 192.0,
                              height: 215.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdasobCSygDFUCC6tuf4z_ccPxZtYIJkC8AQ&usqp=CAU',
                                width: 178.0,
                                height: 172.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKiSFdwhrODUkoE1THa5LAvjVpQET4_jzBVA&usqp=CAU',
                              width: 192.0,
                              height: 215.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVEhUYGBgYGBkYGhgYGBgaGhgZGBgZGRgaHBgcIS4lHB4rHxgZJjgmKy8xNTU1Gic7QDszQC40NTEBDAwMEA8QHxISHjErJCs2NjQ2NDY0NDQ0NDQ0NDQ0NDExNDQ0NDQ0MTQ0NDQ0NDQ0NjQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBQYEBwj/xABHEAACAQIDBAYGBwUGBQUAAAABAgADEQQSIQUxQVEGImFxgZETMlJiobEHI0JywdHwFHOCkuEzNKKywtIXU2Oz8RYkQ2ST/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QALREAAgIBAwMCBAYDAAAAAAAAAAECEQMSITEEQVEiMmFxgaETIzOx8PGR0eH/2gAMAwEAAhEDEQA/AMKhkyGQKZMhnacbJlk+GwvpGsWCKBdnO5FG8/0kCxK7dW0qO24mW79K1oL6LZ9JUUaGq63dz7RHDx8hK9dtY2swRa1Z3c2VEJBJ5AJaVVGg7uqIpZ3YKqjeWJsB/Wbzox0ZNYMlNiuHHVrV00bFMPWp0m3rhwRYt9ryAh77saicmx8Pi2bKuMrM6nrU6DNiCuuod2cUUPYXJ7J6RsjB11X66oXPv5M3jkRR8++d+z9n06KCnRRURdyqLDvPEntOs7AshyXY1jGiB8MrqVdQyneCAQZMiaSS0W0iyxoEjOvYo+P9Pn85HGluennHBYrGRAE7tB3a/wBP1uj1QDd+vGSWi2hYUMtC0faFoWFDLRrA8JLaFoWFEGQ+15AfjeIaR9o/4fyk5EbaFio5mon2j5L+Uq9tbBoYlMldAfZcaOh5q3Du3GXhEaVlKTXAmkzxvafRHH4Yt6AtWp8MuVxbgGoPex+6D3zO4lFXTFYZ6De2iOn81Gpof4CvdPoNknDj9nrVXKzOp4MjWI/A9xBE1U13M3DweA4rAMiekRlqUr29IhuFJ3K6nrI3Yw7iZw5hPW8Z0Zx1Ji+Fr0XuCLVMNh0cqd6sypZh32lXi9kbSZC1NPQVFtdKQw6pUvYFkdAGRt5KsSDwbhK2fH7k7owVTZ9VUzvTdEvYM4yAnsDWLeE4yJsKfQbHVWzViE5vUqZ2t4Ek+cp9sU8PR+qw7mq40esfVvxVANLczr3w0Jbvb7gmU2WEIRekZ2rJVkCmTIYEs6FiVBpHU504fCNUZUT1nIVeGp59kaVsRedCOjprXdrgPdSw0K0QSr5Twd2BQEahVc3uRPWMNRVFCIAqqAoVQAFAGgAG6c2y8AtOmlNBlVVVdOOVQNOzTfLJEtMpy7I2iqFVY60UCDKeEzbLEJA1MQOvMRy0xv3nmd/9PCPtFY6GML/Pyj7Rp9Ydx+BF/mI6IBhDdg8Cfyh1uQPjb4f1kloWgBGKg43Hfu893xkghaIBAAhFtEIgAQIjCWHC/dofjp8YCoOOnfp89/hABbRLR8Qx2FDCIwrJSI0iNMRy1WVd5A7zaZfbnTLCYclS5d7aJTF/Nz1R5zXObTgxuDpYhStREqLuIYBreO8GaRa7kS+B5Dtnpc+MDUnJw1NvVKksO6sQLsp93dxDCZPE4dkYo4AI5EEEEXBVhoVIIII5zW9POiowjLVo3NFzlsdTTfeFLcVPAnXS0xpM0f2M0NhEvFkDLehs2q65qaM6jeUGa3eo1HiJ0YbZVdjZaFUn92/5Ssw1VkYMjMjDcyMVYdzA3E0uA6YY5NP2hnHKoFf/ABEZj5za0+EQ7LLZXQvEuRnUUl5uQT4Iuvnab3YfRmhh+sozv7bbx91dy/Ptmd6OdJcdiXyJTom2ruVdVQczZ9/IcfjN4iEAZjc+6MoJ7Be/mTMpya2NIpPcmURwYn1Rft3Dz/KIiX9by4f1k4ExbNUgURbQiyRiWiwhACOqNxG8a944jy+IEGJsCuvHvHYZJIgCp90/An8D8++IB6uCLiOkbJrddD8G7/z+e6Kr30Oh5H9ajtgA6LCEYCRYkWABEaLCAHKSgNr5TwGq/A6GLn5Ovjb8CPlOhlB0Iv3yP0ZHqk9x1H5j9aRAM9L93wYfjaIanIE91vne0mD8CLH4HuMUiNMKINTwt+uyedfSPsd6bDH4VnRgAtY02KtYaJUOXePste+luF56UwnPVQEEEAggggi4IOhBHETSLpkNWjyLZvTkVEOH2mgqU3GU1UXrAcCyDQ2OuZbEcjMz0k2EcMysjCrh6vWo1lNww9liNzj4+YGj6b9CWw5athFLUDqyC5ajz03snbvHHTWZHBbTZKb0Sc9GqLshNwrj1aq+y4tw9YaHhbZfZ/YyaaZXQieUI9MfIHUks9kYJq9VKVMXd2sOQ4lj2AAnwlUhnov0U4MGpVrEeoiop7XJZvgg84LyL4HoOxtmJhqS0qQ3byd7txZj+rCWtNbanfxP64SCjrrz3d39d/lEoYxXZkpnNkOV2Gqq3sX3F+YG7jwBwk7NlsdyxwlbVxYFRKCes3WY+yoBJ/iO7sveWUzZSdixpbcOf5Xjox9695H+En8Ihj4saxsCTwF/KLALCB5QhaAWAiPTB3+BGhHcYsdALIbsu/rDmBr4gb/DyjlYHUG4kkZlF78TALFhCEYrCESLAdhCEIBYhES0dCAEVRgBcmw5nQecrau1aANjWp/zg/ETtx2EWqjI+5uW8EagjtBnnnSTYmJoqWo0zXHuakDmyese5bzbDGMvc6M8kpLhGur7Xw6qWOIpKo3saiADzM826R4/YruzFatRzvfDrkUnn1sqse2xmLx9Ry59LcOPsuMpHZlO6c7YWoRmCOV9oI1vO1ppTT2szu+S29Jsv/l47+bDwlJ6F/ZbyMJVyDYkQz1H6K3BoVl4mqt/ulB/tPnPK0M3v0c7QFBMZWfVadJHy+0b1Mq95Nh4yezE9mbXpDth2rLgcK2WrUt6Rx/8KEZjbk2QFuwWtqwIs8O6UKmHwlEZUCsW5kBGK3PtFgWJ7O2eddANpXx+eu13rI65jxqOyP4XCMo7wJpNpY3Jji7bkdQexSiqf8JJhHHqeleL+oOWlX8Sz2BivSYpnP21cjzWw8FFvCa9Z5rsfF+jqU2J0Vhf7p6rfAmelKZPUw0yXyKwztDoyuOrpqRY9+U3t42t4x9oonMbjSwtfh+BjKB0sd69Xy3eYsfGNUesh5afdO7y3eA5xoa1m59Vuwg6HwNx49kBHSIsIQENLagcwT5W/OOkbb18R5i/4SSIYQtGZ9bHlcdvOPjEEIQgARLRYQAS0SOhABsYwPA/kY8wjKIi/A6HkePdzkbyaoARYi/fKLanR6nVDdespPAYnFBP5FqBQO4SoksqelXS/D4QFSRVrDdSUg5T77ahB2b+QnkW3Ok2JxTXrVWy36tNCVQX3AID1j2m5mv2l0GrUyfR4OjWW+gGJrA+KlkPkxlDXo7Qo6U8IcNpYth8Oc5H79s1TyebVtsZ/Mz/AOxV/wDlV/8A86n+2E7fR4//AO554j84R1IPSVSGXWzsUFw2KS+r/s+nMJULH8JRgzpw7bxwYW+II+IEceSGrRbbAxITE0HJsFrUiTyXOuY+V5bJteoz+jxLZnT6oufWYoSlnPFtLX42111OWXUWPdLPbD5wmJGvpLJU93EIoD3++oFQcyzj7JjhNxlYpR1KjV4appblp4cJ6P0b2h6WiLnrpZW5n2W8R8QZ45sPaJcZW9ZdD2jgZr9jbTai4Yajc6+0vHxG8Tqz41lhqiZQlolTPTlMfOXC4hXUMjZlYXBH60PZJTUAIHO9vDW365TyWjtTGObk5fWQ+YIBt3H5jsiU2BNuDXPiNGW3Du+9Kbb20/2erRfeKmamwuBmsM6Wv9ode3fbjeWKVFqKKlEhg2unEjS/Y3Ag7xpHpdJhqV0d6LYWnOuJ+tameCKw7blg3+nzjkxAK5hwvccQR6wtzHKU226hp1adZdRbKbcbXNvEFv5YRVuhN0rLrFPlUta+Xraamw9aw4m15JTcEAg3BAII3EHcYylVV1DKbqwuD2GVGzsR6Go2Hf1b3pn3W1VfmAeYI5Qp7jsuaqBhY+BG8HgQec5FxwVxRqMFqMCUvoKijeVvvI0uu8X5EGd95UdJNjLi6DU26rg5qb8UqL6jAjUcjbgTJXIy2vFnlWxOndbDsaOOVnCMUZ9PSoVNiG4OBz38btPRtmbTpYhA9CorpzXep5Mp1U9hF5TTQNHfCIDEDC9uI/HdEIYSR2js3jw4/rfHo4IuDcR048Tg7nMjFH9oahux13MO3eOBEBnS4uCDxlG+2fROadcN7rgb15svMbiVuL8BJKW2greixIFNxxv1WHtAncO06cyDpOvG4ZKqZXF1OoI3g8GU8DLiqe62JbtbCYfH06n9m6seQPW/lOsdVrqpAY2voCdxPK/Ps4zz3b+EbDsA3WVtUcaZra2A9scvGUY6eumam6tVX1Wp1lUgjiLk5h437p0vp/Tri9jFZZcNbnp+2Np0sOhqV3VF4Fybsd9lUAlj2AGeebR+lGxIw+Hzamzu5UHkcii/gSJntp7cwFY5jgq4a2lsU2Udi5lawvyEz2NxNJv7Kh6Me9Veo3nZR8JKSSKtvk1f/EzGexQ/lf8A3wmIvEhY6QokiGRCPWCJOlDOrCYz0ZYMudHXLUQmwdQbgg/ZdTqr8DzBIPHThUiAtcJhCjrVot6WiSAWAs9PMbBayC5Q30zaqeDHdNPRqTA4NyKilSQcwFwSDYkBhccCNCJr1rgC5nodIrizDPyjW7C221BvaRj1l/1L71vPyI2mLxitR9PSIYIQ4txC6OtuBylxY7jPJcFig2Zb6oxU/MfA/CXWzdpvRbMh0PrKdVYciPx3zPP0qk9Uef3FDM4+ll19KC58Clam2iVqdQMPZdWRT2dZ1lD0U6TuNVIzC2dD6r8Mw5d43doteypY1KlCtg6hy06qutNm19EzapmPshrG/AjXQ6ec4DBV8wZAUcajQk8jZRcsO2xEyx4pK4SVo1eSMo6k6Z73svaVKt1kNmt1lOjDtI494kW0MPnR6F7Plz0/4TcW7A1lPYy8559gajgKzgo44rmGvNSQCO75y7bbdUqucgsjBke1mB3EMBoQVJBGkmfSSjK4Gceqi1pkdfR/bIpn0dQ2Unj9huIPJT8N/Ey36R4LOnpFF2S503sv2hpvI3juPOY3pHVzD9qoDjarT4hjvHc2rK3MNztLHop0qTKEdupuVjvp+63u8jw7txPG3+ZFb90XCe2l8dmXuwdt57U6p632W9ocj73zl/MX0g2V6MmrTH1bG5A+wx4j3Sdew9lrduwukF7U65625XO5uQbke3j378p4lKOuHHdeCo5dL0y/szf0m7AOZcXSX1rJVA5gWRz4DKe5Zidl7Qq4aoKlGoEcaHXMrj2WUesvZ5WOs922hhErU3pOLq6lW7iLXHaN47p4DjcE9Ko1JlOZHKngCVNrgb7HeOwiPDUlVGzlXLPXujnS6lXplicpRc1RNSaY4uul2pdtrrx01GjVhUAZGBuLq6kMCD2jRlP64GeC4FsRRdKtFWV0N1OviCLagjQjjeavA7efCMlekjLhq7EVcMTpRrDVxTvuDA514MLg2tosnTtcISyR8nqVLEBiV0zLbMt9Rfce48DJS0zW2AuIoLicM12UFlZCQxX7a6ahhYm2+624yjwnSysmjZai+91W/mH4gyIYJTVx/wAEyyqLqRrNu7Ip4qmadS4O9HU2am3BlbgezcRoZhNmbVxGAc4fENnKknKTYOhPVqUid2m8ai4IOusv06dYW4WszUS2gZhmS499b2/iAEXb2zqG0sPlV0ZxdqFdGDKHtquZeBtZl8RqtxcbxvTNbeAclJXFnW9TDbQoPTbrKws6HR6Z+y1uDA7mFxpxniW3MI9Cs+GxJuyGyvbep1RhzQgg21tqOE7sFtXEYeo29K9EsCG5qbMjj7Sm1jz0I4GW/TjE0sdhaWOpDK6MKNZeK5wWUE8QGvlPEPNnH8P2v0slNvnkwVRSpIOhEYTHu9wL710/h4eX4yImYySvYtBmhG3hEMepj1kaxyx2QzpQwcxiGKSON/C3zgtwJtm07vmO5dfHh+c6MTj8zKi+rnFzzNxa3ZK165IyjQchx7zxi4XeW4IubxuFX/Eyzqjm0xUY/VkabdsudmYu2IccHLfAnKfmPGaik8wGEqWZTfVSD36zW0a51/XCdfTS1Rd+TDqIU00XiSy2ag1XQXN+V+d+Z/XCZ+jiZ20MeysrKbFSDz3cbce7iLzacbjSOCUZNmmxmzXBAQgiw3KW1IvZuQlc9E5Q1t4BtvIuL+IlkOl+Ga37QlmK65cxVl10JsAy6nqknfOPbfTLDuuWmuY6a26w7ibKB4nunBDJljJRlE1fRveUZN+FRwLXyk2sQRZlPqsp3g2+BGoIuJmtpYX0T56LEKdRzW+9W4H5HTdunRidrB3uq5Rra5vc9oG6/HzlrsvY9TFJnDKlMOULMCzB7L9gWBW7ZSc2/hbUdE5Y1HU3Rthx5otRasXYHTNqIyVgGp2sVPAHfa+4dm7uljjKFMr6bDtnosbEfapsfssOXI7j5E5zpB0aq4drEBke4RlucxsSVAOuawJy6mwNi1iRwbN2lVw7Z6RBvoyPqjofWRhyP6tOZON6of8AH8zryYHJV/EekbB2+UslY3TcrnenY3Ne3h3bpdu7JRqhqqmbMtzbXMVAF7DQ3GXU8pjK20FVlZdEqLnS5BK62dG95GBW/EZTxmh2Pt1UX0dY/V8Dr1QdGFxqFsS1xut5OWKvzcX1RxNzr8Oe3hnKmGUGxpoAd1gCL2vbcOAPlI8Zg09HUQKozgaWABdT1PHMct9/WI4y9fb2AQFjW9LYGwADBQd+iqOXrEEgX11Mo6OFrY91akhoYcOr52vdspBAUfa1HDTzAkrqE71KhYukzRa9V+Sm6IdIWwlWzn6hyM68EJ0Dju0vzHcJ29JcMKGIdF9U2dPuPew7gwYfwicW2uj5pU6zg9ai6MwJFmw9cAUnUbwQ4dCOOU8teDGbUNXD4Z2PWp+lwzk7ytNkeke3qMRfmDKwzi8qlHvs/wDZ3ZsT0blXtt7qbb1IPgwt85BR2jUo5a2FdkIUKwU6HLqAw3NY8++cu0MR9YbnqlQrdx3m3MaeU4mLU2K6XGh4qw4HtBGoPbKzZI6mvoKEXpSNL0i2kmKRcYoCViDSxCDcXyH0VVexgCp5ZQO+jwGNKJXpn1atNQR76Ojo3eLMP4pxGrvy3GYWI3gi4PzAkZM5ZS4S7GiQpMbAxJi2UEIQisYoMepkQMcDGhNEymDtGqYOYWOiMyQ1erkG4kMx9ogEL4C5t949loWeNLxJtBQ8tbUcJoRisrC+4gA/h85m1JJAHEgecnxOKJYkHTh4Tpw5njTa+ApQUmkzUvXK9ZfEcx+c6KGNDbjY8jKrDVNLeU0n/pOq9GniMN9YroGZBbOjDquBwdQyta1ju0O+dk+qUUpdmZx6VStPlFbiG4b1PDkTvtym/wADgqO0aCM1RkdFVKiIlJeuoIzklC9m3jrW8QZ5/h8LUd/RBTn1ARgVcsBfLYj1jbQHfu5Tc9BAab5N6V6Qr0nta+UhKqH3gSoI9wHS84+ryxmlKLOnBicdn/ZHtnoMiUKj0XqO6Izqr5LNlGYrooNyAba77S1oUDhMFiU0Yo2IK345yWp38GQHxmqIuNZlemb5cJiyOaeJPoRacKyyl6ZPY6XBJ2hmF2pQ2nRqYfrKzIDlcLcNoVdLE3yvbyHOecmozaVFGcaEn1gw0YEj1iCLa33RNk4pqNSm6GzIy+I3MO4i48Zt9vbAQUsRVprkdKlWqzGzekDPnYEH1VVDZbWNwf4tYzWN12YON0Vezujv7ThA9BvrEdwyORlLWW+Vvskrk0OlxvEqMOlRXNIq2e5XIRZgQCbWPZw48N82/wBHSn0NXl6QW78i3+BWW22djh6tDEILPTqpmIHrJmG/uPHkT2Rx6mUGycmGMlTRLsbZ+GNOlVp0aYLIjhsgLDMoPrG58by2eR4WiEUIoAALWA3AFiQB2AG3hFdpyym2y4wpUeefSdjwipSX12Bd7cUV701I+/mI+6ec80rYsqqIODZj4hQf8vxMsumm1v2itUqA6O4VOxE0TuuBfvYzLo9iL7ri9t9r6+M6scnFI58u+x1417ufLyEidybX4C3hw8pG9UFid1yTY9phmlSlqbZio0hYRpaJeRYUOiGNvC8LChbwjbwisKHCI1QDfEjGo5tbw3fA0l3FOK5CIXJ3xVw5HH4QZGHC8dMvbsEYzgSNnPdGxWOjopV8tyN9rLyFwQT323efCQX7Y2LFYzSbPfMiHsA8Rp+E9p6BD/2NG/Or/wB+pPCtivplJ0zaHluP5nwntvQHbFOpQWgvVeiLZfaS5yuOe+zcj2ERzk3jr4msI72WvSLZArIHpqPT0iHpNuJZDmCE+ybcdxsZZUsIi2yqBld3XhZqjMz+ZcyYNIMRUJbIptYXYjfrcKAeG4+Q5zk1Pg1okrV1XedTuA1J8Px3TG9N8Qf2R7i2euFte+iszcPufCalVC7hv3nie87zPPPpBx4yUKI3nPXbmMxKpp23fylRXqRXYyKPY35T13baM1HE00F3qfVoOGaoiDXkBmJJ4AEzxln0PcZ7ps0Z2dzuDgL/ABUqbFj29a3d3zTL2EifZGz1w9JKSahRq3FmOrMe8+W6d8QRCZi2AMZlOn21vQ4Yops9a6DmEt9Y3kQt+biaPEV1RWZ2CqoLMx0CqBcknlPFelm3Diar1WuEUZaa8kW9rj2mJJPfbhLhG2J7GQ2tiLvYblHxOvytONag4yOo5YljvJv5xk3s5ZbuzqvC3KcysRukiVecLFRLmjg0beMbSMmiSEQPFiomghC8IBQAxUOsaIplJ0wAk3gDBoCPuMGF98YaA4XHxkkWAJnO2HPDXu/rImUjeLTsjs3jJ0opSJNka5x90/PX5TQbOxz03V0Yo6HRhwP4gjgd4NpnKTZTddL7+2dKYog3NuRtppHVKjWE0j3Toz0qTFLkayVgNUvo4G9kJ3jmu8do1ltSe929o5vDcv8AhAni/RSiMTiadMXsDnfsRCGOvacq/wAc9nzTlnFJm6aaK/pLtL9nw1WqD1lWyX9tzlTTjYkHuBni1TFu+VqjM7BFXM5ucqiyi5m1+lHaf9lhweBrP8Upj/OfKYBW0mmOO1ilKmdAee39EK+fDI/tBL94o0lPxUzwgNPSeiXSejhsEnp29Z6gAVkZwFNrmmWDWFraA3uLCPIrQoyXc9LzSKrVCgsxAABJJIAAG8kncJnU6aYFlzCuO4pUD+ClATMN0m6VPieqgKUQbhL9ZyNzOR8FGg7TYjKMG2WdXTHpR+0/VUSRRBuTqDUYbiRwQcAe88LYLadTqNyAt3sdPhf9WnZWq8BvPw7ZV7WayADiw+FzOjSoqkRN7FRCJFiOYIQhABVciShryGNhdDolII3eUVKnnIg5kgpE6nQQXwB13JM3YYQuISqJ2HCOkYMdeFioW+giiMUx4jsKFiwEdEFDYoiwAgOgywAizu2Ns84ivToA5fSPlLeyoBZiO0KrW7YN0NK+D0T6LdlZKL4hh1qxyJ2U0Juf4nv/ACCbp3ABLEAAEkncANST2WkGHpKiqiLlRFCKo4KoAUeQmO+kraz06aUE0FcNnbjkUqCg+8WF+wW4zj1OUjsUdMTB7f2ocRXqVjezt1AfsoOqgtwOUC/aTOC8hdtRFvOhOkYvckzybDVgARmG/dp/5nLec7bz3ykxN0XivEetbv4CUgXlHB2H2j53+cdsPxCzY6jmTc+H9bSs2u92UcgT5/8AiNdmO9j52+UYV8YckuSOXWOCHlOkRbRUTZzimYoonmPjJ4SqFZD+z+8Iv7N73w/rJbRphS8CtjQqr2mGa8RoCF+B0LlEIXhEFDRHXjBFMQAslE589jJVaNMbRKIt4y8W8Yh0W8ZeF4ASAzR9ACBj6N+Iqgdh9C5+QMzQM0HQc2x+H76nxo1BIye1lQ9yPaFMo+lmwhi6OUWFVLtSY7rkDMje61h3EA8NbpGiOZwptbo7mr2Pn6ojK5VwVZSVZTvUqbEHtBBEdear6SsAExSVVFhXS7ffSysfFSh77zJEzri01ZytaW0KTIuJ74+8j4y4vciQ6JFiSyBYjGF4074AOQRSICF4AJaIYpiGANBGmOjTASGmEaTC8hsYsI28IrAS8A8AsdKAhqEQV7Rai8ZHJ4ZR1I948NOK8kWpzjUhOJ1XhIVcGPzS7FRIDL3oa9sdh/vsPOm4/GZ8NLbovUy4zDn/AKqj+a6/jInvFjh7ke3o0cWkCNHF559npGK+lBL0aLcVqlfB0Yn/ACCecz0T6Tan1NIf9a/kjD8Z5zedWL2nLlXqF42AuToANSSdAAOJmuwHQCuyhqtRKVwDkCl3A97UAHsuZ19AdgbsVVX9yp+NQj4L4nkZt8dihSUsQzG4VUUXZ2Y2VVHM+Q1J0EiWR3USo4k1cjzPb/Q6thlzofTUwLsyqQ6drJc9X3ge8CZi892wzuUU1FCORcqGzZTyzWF5k+kvQtKt6mFypUOpTcjns9lu7Q8hvlQzdpEzw94nmpMRYuLoVKbGnURkYaFWFj39o7RpOnZ2CevUSlTHWc27FG9mPYBc+E6NSqzn0u6OjZGyK2JYrRW9vWdjZEvuzNz7Bc9k1P8Aw8bL/eFzcvRtlvyzZr+NvCavB06GDoqmdERd7Oyrnc+sxJOrH8huj8PtvD1GyU61NmN7KrAk2FzYcdNdJyyyze8eDqjhil6uTyDaGDejUalVXK6GxG8HQEEHiCCD4zmmj6e4oPimA+woU99hf4i3hMyWnVGTcU2c041JpDiYxjGNVEjLEwchJEkI1bwzSRiwhCABFEISiRGnPCEmRSFMIkIhiiTLCEqImPEs+j/95w/76n/3FhCD4YR5PbEjjCE889Ew30l/2dH943+Uzz1tx7oQnVi9pzZfee54f1V+6PlJhvHf/paEJzdzo7AsbUiwgB5/9J/rYfuqfhK76Pf7237l/wDOkWE6Y/pnK/1Bn0j/AN5T92Pm0qujP97w/wC8X5GEIo+wuXv+o3pJ/eq/7x/8xlRV3QhNo+1GE/cyKSpFhESOjGhCUIWEIRDP/9k=',
                                width: 178.0,
                                height: 147.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://files.passeidireto.com/75910ce9-806e-4cc7-aa53-9b8692a1549b/75910ce9-806e-4cc7-aa53-9b8692a1549b.jpeg',
                              width: 192.0,
                              height: 215.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://lh3.googleusercontent.com/yTa9QktA74Rt9WKndA_VqaZ9jn66CNABXC6AFlGgBb0SVh2fjGmN5Y8sdoiL5YeeA8PveG6wAnKwZOOWGHmrFoOTGA=w640-h400-e365-rj-sc0x00ffffff',
                                width: 178.0,
                                height: 147.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://wallpapers-clan.com/wp-content/uploads/2023/12/death-note-l-with-red-eyes-wallpaper-scaled.jpg',
                              width: 248.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://wallpapers-clan.com/wp-content/uploads/2023/11/jujutsu-kaisen-ryomen-sukuna-cool-wallpaper-scaled.jpg',
                              width: 125.0,
                              height: 166.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
