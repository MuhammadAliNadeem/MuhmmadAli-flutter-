class Item{
final String id;
final String name;
final String des;
final num price;
final String color;
final String image;

   Item({
    required this.id, required this.name,required this.des,required this.price,required this.color,
    required this.image,
  });
}
final product = [
  Item(
    id: "Muhammad Ali",
   name: "Iphone 12 pro max",
    des: "Apple iphone 12 generation",
     price:999 ,
      color: "#33505a",
       image: "https://www.gizmochina.com/wp-content/uploads/2020/05/iphone-12-pro-max-family-hero-all-600x600.jpg"),

      Item(id: "Muhammad Ali",
   name: "Iphone 11 pro max",
    des: "Apple iphone 11 generation",
     price:899 ,
      color: "#33505a",
       image: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBISFRgSEhIYGBgYGBoYGBoZGhgcGhgZGBkZGh0YGBgcIS4lHB4rIRocJzgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHDEhIyE0NDQ0MTQ0ND8xNDQ0NDE0NDE0NDQ0NDQ0MTE0NDE0NDQ0NDQxMTQ0NDE0PjQ0MTQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYDBAcCAQj/xABOEAACAQICBAkIBAoJBAMBAAABAgADEQQhBRIxQQYHIlFhcXKRsRMyMzWBobKzNHPB0xQjQlKCkpPC0fAXJURTVGKi4fEkY4OjQ9LUFf/EABgBAQEBAQEAAAAAAAAAAAAAAAABAgQD/8QAIREBAQEBAQEBAAEFAQAAAAAAAAECETEhMhIDIkFRcRP/2gAMAwEAAhEDEQA/AOxREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQMdaqqKWc2A2kyAwPC7D4h2TDBqur5zIGKD9O2oT1NITjJrvUNDBISBXqar23qq67L1HkDqJG+TGjsJTwlFaaAKANY7rs28ncLb9wE8dbsvI9c4lnamE0pT/L1kP+ZSB+sLj3zbR1YXVgw5wQR3ic2wHGTgcRW8haogY6q1HChW3A2uSoO0X8cpYsXhQh1lOqedCVb3R/Oz9Q/hL9lWHH42nQQ1KrhEXaTKvR4w8HUJ8mtR1BtrKht7Dax9hlE4Y6QqYqtSwb1GdAxZr2zChSBltzJ27wOaZaFJFGoxCJTQs55gq6ztl7TbeSBPXvx428vHS8FwswVU6orBG/NqAoe9sj7DJpHDC6kEHYQbjvE4RhNM4LFP5On5WmT5vlNUhu4mx6L983hh8RhzrUKrIf8jshNv8AJfVMdTrruldKUcKhqV6gRRvJA8ZpaL4QJiU8pSpVGpm9n1WUNbeocLrDpGU55gQ+lMRSSvUaotGirvrADWqVHcAlQAOSigDtE7SZfdO6ZpYGi1R7rTpKOSoubAhFVVyuSxCgXA2kmwMdaS64+mci2qeZgV95y982VNxcZiUPg3w3wukmakisjgEhH1SWA3rY59/2XlsSr07sjEWzOqSO+38Y6JHT3CHC4FNfEVAt9g3n2SGw/D/CuAxp1Qp2HUOznsbG05rWrNj8bUq1SWWnqKoOzMKWy3bx+iJsYvG0qVNq9ctq6wVVXznZrkKNwyBJJ2ADbcSq65gOEWDr2FPEJc/ksdV/1WsZKzgWBxlDFgmmzAjajhSR3bum83MPpHF4UjyVeoguAAjFkudg1HuvukR1HhFwwweAstepyzsRRrN7QJAYXjZ0Y7artUTpKXHttn7pybSdRq7VsW5JLNVKk55JkvvYH2mU+UfrXRmn8Hihehiab33BhrfqnP3STn46p1GU3UkHoNpZNE8PNJ4Wwp4pyo/Jflr1Wa8D9QxOK6J46agsuKwytztTJU/qm4Pul20Txm6LxFgaxpMd1Rbf6hcd9oF0iYMLi6dVdalUV150YMO8GZ4CIiAiIgIiIHPeFZ/rPCDeGqavMTqU735vftkxwhplqNr2DLqMdyiojJrHoBYGQ/Cr1pgu3U+XTltemrKyuAVKgMDstq53nPr9OjP5fmDEYdqbBNQpURijKdodTax6Q3hP0HhMeERGqg2NJFJtch9Vd3Sb59UwvwQwdSstSoA7rawYLrEAZBmtrMLc+6c74wdIYh6po02bVKl2C7wHdQD0DUvbnPQJvt/qWSRnkxLbWLFuW0m5SxN3sGuAOSpIy7/bJXSdMstVBtqpUpL2yqug9pTV/SlW4MOzYhGcklkcknoAX7Jd3orURkYXBfdtB5NipGw3taenkjnv22uU0FIqoaYIbWXLO+sCP952oY6nSSpTqLm62QgA8tb7TuzIN+iQT6GSm5rVFVnUE62qoYkC931drd0qXCjF13c01ZtRVSqwGzWdA2s3UGsNwz54v91Jfq/cV+qcRiCjFuTTuSNUAa72C5km2YztsE2+NLDO+HdACbhaigfleRclx1hHLfoGRfE56Svf8yke9nM6RpDBpWUI9xyrqR5ytc2K9O2Gn574E6y6RoGmLDygJA/Nsdb2bJ2rFaRQJVR/OKuy5XupS23d/wATWo8G8Jg1q4umELhGzVVUAkHOyjbt985Dwlx+Jau5131KVRkXbYENYm/5xtt27OaXnad4leB5YiqciLjWJuD5hsQP95g4U0yaIS1/JutUjnSogp39jIAe2Js8D1slYczKO5DJfE4M1SgS+uqZEAHklRrBgcih33hVE4JgjE8nzdV79Vsr+2X/AE1pii2CSjqlaqk7Fy1SSQQ3WVy5xIdNHpRYKqhWqOqEqLABiAbc0q+Kr1q1RHctqEhE/NVReyLbr9554536d43SD+Bk5W1a9tt769G9x3Sny61EIwRBFiBiPjoSlQhERA9+UO/PrnxugW3e2fBLdobRgdFOoDySWy2Z7T7s5rOepbxpcH8Hi8q2HrNSO5lLAg7rkbAbHn2Tt3F5wqq4oPhcXb8IoqG11tq1qZOr5QDLMHI5AZjpAoaL+DIg1bXu3QwOzZsymXgljAuk8MyHJ2qUz2Wps1v1lUzev6fM9Sa+u3xETyaIiICIiBz3hV60wX1lT5dOT2msS1OkzoLsFuBzlKbuotvuygSC4U+tMF9ZU+XTlh0lhTUSymxAUqeZlsQeq4985tXldGZ2cfnbCaRr4WsmLSoxctrs1ySxyZg5PnE3375feFuh3rWxFPaQGUZ2ZH5ZS42MrEkc4JmvU4ualSuBTOrSLXKsPMBOag35S8xte3fL9j08nTCILhXVf0QLX7p6a3Oy5YmLyzTk3BymyYlKbizKlQEewN+9LPisY1OniGpmzpTqOhG1Wsi6w6QHY9YEh8OP6zf9P4Em5jb67MADmbqdjKQVZT0FWI7pv2R4X5apejMVUwtdCDyWI1gCbMpNjfnPT1ye07o1xmG5QuljezotwjqecDklerpmDDaAVqistQsim9mUhwAb6rbr9I2yzaXduRYXGs+t0DnmrfvxG9xO+lr9CUR3M4+yTnGdjKlPCVERipc06ZINiEqVHD57gdRVPQx55C8UPpsT2Kfx1JcuF2hBiqbKQSCCrAbSrFWut8tZWVWHV0yf5bcZ4C4+pRxX4IW/F4gGm6jzbup1WA3HLwm3wm0BWVy4Fy/KdbHJsruuVmVhY9Bv0SwcE+ANWniRiKr3SldlNrFmAIGVzLVpstq2CjV8k1zzHVyEvfvxOf7c64INdK552U96XmLhLiGOGVFaweqqPuuqUg6oegsxPTqjmnvgb6Kt1r8Ew6Qw4ZSr31GtmBcoy3KuBvtrMpG8NE536qA0LiKis1INs5a8yuhDC3MMps4xArq6G6khyp85GJuUI5gb2O8EdM+4DR/k2Zy2tkQDYjbvzmfE5vbnK29to6MuKqB8IzDeMT8dCUeXjFUtTBlb35NZsxbJjhmGVzzyjiAiJvYHAmq6oNpIHP8Az/vLJ0639DaJNZ1YXC7Tkdgts59tp0T/APo0sOrLTp6nJFzmT1XP85mauIqLh6KBQCy5Fha98iQbdMqePxT1Dcneb/8AE6MZkeWraksbiKuJDVBcqmRtznZ4Tb4In/r8GP8Av/uPMvA6oFVwwBBdRn0jIzcwOBFLSuDKeY9W42bdRrgDmAsI3rspmcrt8RE5nqREQERECk6eW+kKByyYkZDbaiMju2nvlj5uoeEr2nfp9HtHwoSwj7B4Tm37XTjyMdRBIvGLcWOclaki8XMxqueVKYGOawHcN4rf/UdwmLEHlt1zYrfTm9nhXmlXblN1zpnkcWv1XlkHV1ZTDVdtmuSOnPxmQmYKplRdeK1LNUOWxBsF/NRtu/Nj3mdKIynN+K7bU6k+XSnR5K3GpiKY6uqV7TCch+w3wmWSvK7pjzH7DfCZRzvQq2Sr1+D1B4CYNozmfRJ5FXrPzKs1VaVXxqS9XV/Car0F1gd+su4c4m4TNdzmO0PESDW0ib4T/wAb/DhJQ5eMXrfgZ121jq1je5NwWwxG3otKQJUAJeeB9FBRNV1sVYhW6SBbL2Sr6NwHlSBewJtfmvv6v4750fRVChQRqATWawuG25gDdazdO3ZPTGf8s6qt4vGXQ3POfbe+U2NC6GbFK4IIYKHFyBrKQ3Pz227rSYx2BpU3aoVV1foBCsRmei/P1zDgsctNCoNgNUA35R1QVIv7b+0889frHUk+i0wYUJU1gSLk5MCBzdBMy4J1/DsCluUMRkeZfJ1Rbwlfq6UJB5ri43k2z8PcOabHBrEeUx+BvtFbPp5D/wAPfM6/Kz13qIieD0IiICIiBRuEFZV0jh1JzZyALHPk0ic7Wy1Tv3iWUfYPCVLhT60wXbqfLpy2D7B4Tm37XTjyPlSReLknUkZi5iNVzus6/h7LfOxysdi+Uub2t+WJp1jyj1zNW9ZnsPNWueU3XOqeRxa/VfC0w1DPZMwVDKi9cVdRS9VQ1yFpkixyuqLncW2odk6XOU8UfpsR9XR8XnVjJW41sRK7pjzH7DfCZYcQZXtMeY/YbwMqub6GdWSvqm9mzyIsSztbMczCaytPvB3zMV2x4TErSjKTMDHlL2l+ITJrTATyl7S+IkHjSZ/6T/xv8OElGpprG0ueIql8EWIA5NYWGwBWw6j3ASoUXts2zUSrJwVwFRqqBWG0XB+0WzEuem6Rw+sQ+sAxIyFxzqerZNvgxhaColR762oGA59Ufz3St8IMezHM9fT0zozOR5WsNHHAkqxuG2df8275oYw2OX89Npj0fReswp0xdiQEAsCWzO0/zsk0mhK1VDUWmciOTvJuwYKN9ipuOqO/DiOfC1FVWIIDqWU84BINvaLf8yT4I0iuPwd/7+3/AK3khh1bUWjUQlAiswzumoBc7OTcixPSOabWjMIKeNwLghtfEBhq+agNKodU9OY/VMzrxc+uzRETwehERAREQOfcKfWmC7dT5dOWsHwHhKpwp9aYLt1Pl05ab+A8Jzb9rpx5B5GYuSTmRuKmI3XNq3rM9h5pVzym65uVvWh7DzQrnlt1zqz5HDr9V5JmKoZ6JmGoZUXTij9NiPq6Pi86qZynihYGtiOhKN+9p1UyVuNbEGV/THmP2G+EyfxEgNL+Y/YbwMquX8HvR4rtjwmurTPwfP4vFdseE1VMoy3mIHlL2l+IT7eeEPLXtL8QkGu/0E9WI+Zh5V8DTLuqjIkgX5t/2S0P9BPViPmYeRPBmkpqaxsSvPu2coWzy+2bz6zp0LAVPJ0NU5kLa5tv5rfzlNLRGFo1DUFdNYEBVN7arHWzBHsmyyFyBTFwxtltznjH0kwhZNa+tY5jNduYPNs986O/OPOMbYGnhS5osCSmrntAUEs6sNmsLrbnuOmNM4yphURCro1gGzstzvuuT5KL+2QmBreVdabG2s9ieZdYlu7KWfSOOp4gtSqJrKTlzob5EdEz/wAONfQ2MYlqliBmhvnk2q5Njtvy778x0Tb0aUONwXk8h+EbthBp1SNXmtmLdUg8Ti/IIaSZDaN/MDt2Nv8AbumPgdii+kcIv5PltZecXR7iTX5rU9foWIieDZERAREQOe8KPWmC7dT5dOWcnPu8JWOFHrTBdup8unLM23u8Jza9rpx5BjI/FTeYyPxJmY3XNq3rU9h/EyPrnlt1yQq+tT2H8TI2ueU3XOrPkcOv1XkmYahmW8wVIRc+Jz0+K7FH7Z1cmco4m/TYrsUftnVSZK3GvXkDpfzH7DfCZO1zIDS/mP2G+Eyq5fwe9FivrJpqZt8HvRYv6yaKmUZbzyh5a9tfiE+Az5TPLTtr8QgY3+gnqr/Hh5B6AqhKiki4Jsepstm8ScqfQT1V/mYeQ2gqGu43C+3aRff05ZzWfWav9PEGm6hSLAWvbukZwgrGoAxzYXH8b/wlm0jo5BTW4GuFQaw/LJUZgfk5bjzyi6RxPLIvl3gWynt1iNSiX1gy3JHKyHNtOWzd3SW0hiSX1iTc2sekjMXHVs6J54PYh6buyEWK2bZdQd6nmva9ueaek62sTc57Rnvz75FYNK4rXsdhIB9uwnrm7wAcHSeFH/d/ceVrE1zvMnOLZr6Uwv1h+Bp560sj9ORETDRERAREQOe8KV/rXBH/AD1B/wCunLK+3u8JW+FPrTBdup8unLG23unNv2unHkfGkdiTJB5HYqZjVc6qL/WhPOj+68i655TdclanrP8AQeRFc8o9c6s+Rxa/VebzDUmS8xVDCLvxPIBVxJG9KJPew+ydSJnL+KH0uI+ro+LzpxMlbjBXkDpfzH7DfCZO1zIHS55D9hvhMiuYaBW1HFW/PB75HAyS0N6HFdseEigZsZAZ8pHlp21+IQDPlE8tO2vxCB8qfQT1V/mYeaPB0GzPbMEC4v8AlXP2TeqfQT1V/mYeaHBJr1VpkXDm27dc2N+v3zWfWdL21cmnSYnJks1ib6wBsSJTMUgD2drAtttfK+0c8uOlqileSbAWAW+zo9lhKfj9tyPt656VmLFj6VCijCiALrYtmdYe0777pUMU9wefZJPE17UUW17r1H3dUgMRUykt+LxpV2JOe7LPoylj4tPWmE+s/daVhjeWfiz9aYT6z91p5NP0/ERAREQEREDn3Cn1pgu3U+XTlifb3SucKfWuC7dT5dOWN9vdObftdOPI8vI/FTfeaGKmY1XO39Z/oPIaseUeuTNT1n+hUkJWPKPXOrPkcWv1Xm8x1DPV5jqGEXzii9JiPq6Pi86YTOZ8UXpMR9XR8XnSSZK3GKuZA6XPIfsN4GTdYyC0t5j9hvAyK5pob0OL7ayJBkroj0OL7a/ZIgGbGQGKB5adtfiE8Az7hz+MTtr8Qge6n0E9Vf5mHkJwbqFa6ZCxNjeTdT6Ceqv8zDyq4SpqsD0iXPrNdHr0H1cxnzWyII22HR4Su4pTrGwJXMHosZP6O0iz6rBgLqBu8Nsx6QpKxLUwFJvrDbfpHNtnpWEAxGrq7syPHukBin3Sz4lQEJ5r59ZEquJOczpqMEtPFn60wn1n7rSrS08WfrTCfWfutMNP0/ERAREQEREDnvCr1pgu3U+XTljqbe6VvhZ60wX1lT5dOWR9vd4Tm17XTjyMbTQxM32mhiZmNVzup6y/QeQlfzj1yaresv0HkJiPObrnVnyOLX6rzMNQzJeYqhhF/wCKL0mI+ro+Lzo7Gc34ovSYj6uj4vOikyVuMNYyE0t5j9hvAyaqmQmlfMfsN4GRXNNE+hxfbX7JEAyW0UfxOK7a/ZIe82PV59wx/GJ21+ITyDGG9InbX4hA2H+g+zEfHh5TVMuT/QfZiPjw8pghFt0Fj1CgOeVuvsy2+2bNeuTnmDfbfd/H2yrYNhexH2SZXEEoMrgZDpP8JuVmx40hiyykE3vIGuM5I4k5kG2eyR9WSkYZaeLP1phPrP3WlWlp4s/WmE+s/daZafp+IiAiIgIiIHO+F3rTBfWVPl05ZH290rnDJtXSODJ81ndW6bIhA8ZY22+wTm1+q6c/mPDTQxM32mliRMxpzfEesh2X+2Qlfzj1yY0hTU6S1XFwQ3tO77JD4jzj1zqnkcWv1WOYqkyTFUhF/wCKI/jMR9VR8XnRDOecVuKZ61UVGuRSpMuzncEi3Z906EZK3GKrIXSvmP2G8DJqrIbSY5D9lvAyK5jov0WK7a/ZIeSei0UpirjlKwt0AkfxkXNj1GG9InbX4hPgn3DjloDvdR3sIGy/0H2Yj46EpoEtpA/BWyz1awPsamQPcZURCPaNbOSuCxY2N77HMi177ZE36pkovY3lglK63BNjcb+jdI2um+btPEA5Dm95FrzDXubnKxzyltRoGWniz9aYT6z91pWWWWfiyW+k8L9YfcjGZV+noiICIiAiIgUXjO0dUekmIoi9Si4qLbeQCCvtU/6RPHBjT9PGU7hrOuTocmGe23u9kvVSkrqVYAqRYg5gjplPxvACg1TytKp5NufVJI6A6sr262M8tY7ex643JOVINNWuIXglWH9s/wBFX7+fG4JVj/bP9FT7+Z/hWv8A0y59wz0e9OomLpgkowLAbSAADbuB75W6lVKh10OR93ROwPwKqMLNi7jsVPvpFtxWIWLHEi522o6t+vVqC89cy85XhudvY5cZiqTq/wDRan+JH7JvvZ5biqpn+0j9m33s0zyqToDGnCqmLp8oIHo4lRtVC7PTqW/NsxW/QeadY0fpGniUWrScMrZ5HYd4PTK/h+LEUm16WMKtYi4pnYdxBqWYdByyE38HwDNIlkxCKxzYpRdNY87LTrKCfZJYsS9SRmKE3Dwar/4tf2db/wDRML8E6x24xf2dT7+TiuT6VwxwdZyR+KqLqk8zDYT12BkM62PRu6p2bFcA2qCzYoc3omPuaqQfbI5eKmmP7SOryRA7hUAmhykTwWIII2g3HWM51v8Aosp/4hf2Tfez4eKqn/iF/ZN97A5VjxqXA9HVu6Nu5alXTtKScuiVZ1IJB3Tv68V6hSgxQ1WNypo6yk8+q1QgHpGeU16nFDRb/wCdB1Uny6h5a0Dg14vO7jieof36/sn++n3+h7D/AN8v7N/vYHCFa0z+WHtncP6HsP8A3w/Zv97H9DuH/vl/Zv8AewOHa4O3mnQOJbRDVsd+EavIw6MS27XcFFA6bFj7JdKXE9hbjXqkjeFQqfYS7Ad0vmhdD4fBUhQw9MIoNza5JY7WZjmzGwzPMOaBIxEQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED/9k=") 

];


  
