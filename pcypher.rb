class Pcypher < Formula
  include Language::Python::Virtualenv

  desc "Pcypher is a Python library to parse Cypher queries."
  homepage "https://github.com/rioriost/homebrew-pcypher/"
  url "https://files.pythonhosted.org/packages/47/24/f5578804ef253b18a1006c68e7c4ba9638ee7ee72cef2e035700cdb29add/phorganize-0.1.2.tar.gz"
  sha256 "3465bbb140e146ebc98a0bea004def2611f3abf84251a9465cc1388d7b624e76"
  license "MIT"

  depends_on "python@3.9"

  resource "ply" do
    url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
    sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/pcypher", "--help"
  end
end
