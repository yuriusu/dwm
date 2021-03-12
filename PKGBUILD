pkgname="dwm"
pkgver=6.2
pkgrel=1
pkgdesc="Dynamic Window Manager for X"
url="https://dwm.suckless.org"
arch=("x86_64")
license=("MIT")
depends=("libx11" "libxinerama" "libxft")
optdepends=("adobe-source-code-pro-fonts: Default text font"
	"ttf-material-design-icons: Default icon font")

package() {
	cd "$startdir"
	make DESTDIR="$pkgdir" install
	install -D -m 0644 LICENSE -t "$pkgdir/usr/share/licenses/$pkgname"
}
