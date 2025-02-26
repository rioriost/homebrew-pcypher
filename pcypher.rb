class Pcypher < Formula
  include Language::Python::Virtualenv

  desc "Pcypher is a Python library to parse Cypher queries."
  homepage "https://github.com/rioriost/homebrew-pcypher/"
  url "https://files.pythonhosted.org/packages/cc/43/4058181d544347a73bd89ee79d9993c97e7a55190fc09c8424471652a188/pcypher-0.1.0.tar.gz"
  sha256 "97c4c418e70931eea5e93a2287b5beb0c55ff88ba2f2c4baaa3118d89c217659"
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
